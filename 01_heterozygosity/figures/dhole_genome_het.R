# genome-wide autosomal heterozygosity per individual (ANGSD, deduplicated BAMs)

source("00_het_setup.R")

fig1 <- het %>%
  mutate(label = fct_reorder(label, het)) %>%
  ggplot(aes(x = het * 1000, y = label, shape = status)) +
  geom_point(size = 3) +
  facet_grid(group ~ ., scales = "free_y", space = "free_y", switch = "y") +
  scale_shape_manual(values = status_shapes) +
  labs(x = "Genome-wide heterozygosity (per 1,000 bp)", y = NULL, shape = NULL,
       title = "Autosomal heterozygosity (ANGSD, deduplicated BAMs)") +
  theme(strip.placement = "outside", strip.text.y.left = element_text(angle = 0, face = "bold"),
        panel.grid.major.x = element_line(colour = "grey90"))

ggsave(file.path(OUT_DIR, "fig1_genomewide_het.pdf"), fig1, width = 7, height = 4.5)
ggsave(file.path(OUT_DIR, "fig1_genomewide_het.png"), fig1, width = 7, height = 4.5, dpi = 300)
print(fig1)
