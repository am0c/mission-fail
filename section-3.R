resist <- data.frame(
 case = c(
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
  1, 1, 1, 1, 1
 ),
 val = c(
  55.2, 53.5, 52.3, 54.1, 52.4, 50.5, 53.5, 46.9, 52.9, 57.1,
  55.7, 51.2, 55.2, 57.4, 53.9, 58.1, 50.6, 59.4, 51.8, 50.8,
  56.9, 56.3, 59.1, 52.7, 56.1, 58.2, 53.1, 50.6, 53.1, 59.7,

  46.9, 50.6, 47.3, 48.0, 49.2, 48.4, 48.5, 48.6, 48.2, 50.2,
  47.2, 50.3, 49.1, 48.2, 47.4, 48.1, 49.4, 47.4, 49.7, 49.1,
  49.3, 50.3, 50.8, 48.3, 47.7, 48.5, 51.1, 50.9, 49.5, 49.7,
  51.4, 48.1, 49.7, 50.9, 48.6)
)

sink("section-rout-3.txt");

ret <- var.test(resist$val[resist$case == 0], resist$val[resist$case == 1],
    alternative = c("two.sided"), conf.level = 0.95)
print(ret)

if (ret$estimate[[1]] == 1) {
  is_equal = TRUE
} else {
  is_equal = FALSE
}

ret <- t.test(resist$val[resist$case == 0], resist$val[resist$case == 1],
  alternative = c("two.sided"), mu = 0, var.equal = is_equal)
print(ret)
