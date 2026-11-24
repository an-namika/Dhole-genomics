library(tidyverse)

# ---- settings --------------------------------------------------------------------------------
DATA_DIR <- "~/dhole_project/het_results"     # where the .het.txt / .win_het.txt files are
OUT_DIR  <- "~/dhole_project/figures"         # where figures and tables are saved
dir.create(OUT_DIR, showWarnings = FALSE, recursive = TRUE)

WIN_SIZE        <- 100000    # window size used by thetaStat (bp)
LOW_HET         <- 0.00005   # exploratory: a window below this counts as "near zero"
MIN_RUN_WINDOWS <- 10        # exploratory: >= 10 consecutive low windows (>= 1 Mb) = candidate ROH

# ---- sample metadata (one row per individual) -------------------------------------------------
samples <- tribble(
  ~file_name,                          ~label,                ~group,               ~status,    ~depth, ~sex,
  "Dhole_SO15487_India_wild",          "India (wild)",        "Dhole",              "Wild",      8.35,  "M",
  "Dhole_USNM587829_SDZoo",            "San Diego Zoo",       "Dhole",              "Captive",   9.28,  "F",
  "Dhole_SAMN03168405_China_merged",   "Beijing Zoo",         "Dhole",              "Captive",  16.39,  "F",
  "SRR8049189",                        "Berlin Zoo",          "Dhole",              "Captive",  18.15,  "M",
  "Dhole_SAMN47341506_merged",         "C01A",                "Dhole",              "Unknown",  64.88,  "F",
  "Dhole_SAMN62621803_merged",         "Hebei, China",        "Dhole",              "Unknown",  41.57,  "M",
  "Dhole_SAMEA8718190_merged",         "Scand. wolf 8492",    "Scandinavian wolf",  "Wild",     29.88,  "M",
  "Dhole_SAMEA8718191_merged",         "Scand. wolf V009511", "Scandinavian wolf",  "Wild",     32.23,  "M",
  "Dhole_SAMEA8718192_merged",         "Scand. wolf Varg0109","Scandinavian wolf",  "Wild",     33.10,  "M"
)

# plot order of groups (new groups already listed; only groups present are used)
group_levels <- c("Dhole", "Scandinavian wolf", "Ethiopian wolf", "Isle Royale wolf",
                  "Red wolf", "Mexican wolf", "Gray wolf", "African wild dog")
samples <- samples %>% mutate(group = factor(group, levels = intersect(group_levels, unique(group))))

# ---- genome-wide heterozygosity ---------------------------------------------------------------
het <- samples %>%
  mutate(het = map_dbl(file_name, ~ as.numeric(read_lines(file.path(DATA_DIR, paste0(.x, ".het.txt")))[1])))

track_order <- het %>% arrange(group, het) %>% pull(label)

# ---- window heterozygosity --------------------------------------------------------------------
# chromosome names NC_049222.1 ... NC_049259.1 = dog chromosomes 1 ... 38
read_windows <- function(f) {
  read_table(file.path(DATA_DIR, paste0(f, ".win_het.txt")),
             col_names = c("chr_acc", "pos", "win_het"), col_types = "cdd") %>%
    mutate(file_name = f,
           chr = as.integer(str_extract(chr_acc, "(?<=NC_0)\\d+")) - 49221)
}
win <- map_dfr(samples$file_name, read_windows) %>%
  left_join(samples, by = "file_name") %>%
  filter(chr >= 1, chr <= 38)

chr_offsets <- win %>%
  group_by(chr) %>% summarise(chr_len = max(pos), .groups = "drop") %>%
  arrange(chr) %>%
  mutate(offset = lag(cumsum(chr_len), default = 0), mid = offset + chr_len / 2)
win <- win %>% left_join(chr_offsets %>% select(chr, offset), by = "chr") %>%
  mutate(genome_pos = pos + offset)

# ---- exploratory ROH from windows -------------------------------------------------------------
roh_runs <- win %>%
  arrange(file_name, chr, pos) %>%
  group_by(file_name, chr) %>%
  mutate(low = win_het < LOW_HET,
         new_run = low & (!lag(low, default = FALSE) | (pos - lag(pos, default = -Inf)) > WIN_SIZE),
         run_id = cumsum(new_run)) %>%
  filter(low) %>%
  group_by(file_name, chr, run_id) %>%
  summarise(start = min(pos) - WIN_SIZE / 2, end = max(pos) + WIN_SIZE / 2,
            n_windows = n(), .groups = "drop") %>%
  mutate(length_mb = n_windows * WIN_SIZE / 1e6) %>%
  filter(n_windows >= MIN_RUN_WINDOWS) %>%
  left_join(samples %>% select(file_name, label), by = "file_name")

# ---- shared plot style ------------------------------------------------------------------------
status_shapes <- c("Wild" = 16, "Captive" = 17, "Unknown" = 1)
theme_set(theme_classic(base_size = 11))
