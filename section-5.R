oneway <- data.frame(
  mg = c(12, 11, 7, 13, 9, 11, 12, 9,
    8, 10, 7, 5, 6, 10, 7, 8, 11, 7, 8,
    9, 3, 7, 8, 4, 6, 6, 5),
  case = as.factor(c(
    1, 1, 1, 1, 1, 1, 1, 1,
    2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
    3, 3, 3, 3, 3, 3, 3, 3))
)

model = aov(mg ~ case, data = oneway)

sink("section-rout-5.txt");
print(summary(model))

cat("\nconfidence interval:\n")
print(confint(model, level = 0.95))

# hsd = TukeyHSD(model, "case", ordered = TRUE)
# npdf("section-img-5-1.pdf")
#   plot(hsd)
# dev.off()

pdf("section-img-5-1.pdf")
  plot(confint(model, level = 0.95))
dev.off()
