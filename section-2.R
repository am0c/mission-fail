company <- data.frame(
  loc   = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  stock = c(13100, 13500, 12900, 12300, 13000, 13600, 13400,
            14000, 14600, 15000, 15700, 16300,
            15300, 15000, 14800, 15100, 15300, 15800, 16100,
            16500, 16000, 15500, 15900, 16000, 16000))

sink("section-rout-2.txt");

summary_extra <- function(x) {
  cat("summary:\n")
  print(summary(x))
  cat("분산: ")
  print(var(x))
  cat("표준편차: ")
  print(sd(x))
  cat("변이계수: ")
  print(sd(x) / mean(x) * 100)
  cat("범위: ")
  print(range(x))
}

cat("=== 국내기업 ===\n")
o <- company[company$loc == 1,]$stock
summary_extra(o)
pdf("section-img-2-1a.pdf")
  boxplot(o)
dev.off()

cat("=== 국외기업 ===\n")
o <- company[company$loc == 0,]$stock
summary_extra(o)
pdf("section-img-2-2a.pdf")
  boxplot(o)
dev.off()

cat("=== 전체기업 ===\n")
o <-company$stock
summary_extra(o)
pdf("section-img-2-3a.pdf")
  boxplot(o)
dev.off()

