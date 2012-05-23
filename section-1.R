library(fmsb)
city  <- c(29, 29, 34, 35, 35, 31, 32, 34, 38, 34, 33, 31, 31, 30, 34, 35)
rural <- c(34, 32, 32, 29, 28, 30, 29, 31, 29, 28, 30, 29, 29, 27, 28)

pdf("section-img-1-1a.pdf")
  hist(city)
dev.off()

pdf("section-img-1-1b.pdf")
  plot(city)
dev.off()

out <- capture.output(stem(city, atom=1))
cat(out, file="section-img-1-1c.txt", sep="\n", append=FALSE)


pdf("section-img-1-2a.pdf")
  hist(rural)
dev.off()

pdf("section-img-1-2b.pdf")
  plot(rural)
dev.off()

out <- capture.output(stem(city, atom=1))
cat(out, file="section-img-1-2c.txt", sep="\n", append=FALSE)
