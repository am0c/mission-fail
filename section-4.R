accidents <- data.frame(
  before = c(8, 12, 5, 4, 6, 3, 4, 3, 2, 6, 6, 9),
  after  = c(5, 3,  2, 1, 4, 2, 2, 4, 3, 5, 4, 3)
)

sink("section-rout-4.txt");

ret <- t.test(accidents$before, accidents$after, alt = c("greater"),
    mu = 0, paired = TRUE);
print(ret)
