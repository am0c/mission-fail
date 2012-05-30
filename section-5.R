oneway <- data.frame(
  mg = c(12, 11, 7, 13, 9, 11, 12, 9,
    8, 10, 7, 5, 6, 10, 7, 8, 11, 7, 8,
    9, 3, 7, 8, 4, 6, 6, 5),
  case = as.factor(c(
    1, 1, 1, 1, 1, 1, 1, 1,
    2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
    3, 3, 3, 3, 3, 3, 3, 3))
)

sink("section-rout-5.txt");
print(summary(aov(mg ~ case, data = oneway)))
