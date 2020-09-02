###########################################################
context("Theme Functions")
###########################################################


test_that("xy_theme() works", {
  DF <- data.frame(x = seq(1, 10), y = seq(11,20))
  p <- ggplot2::ggplot(data = DF, mapping = ggplot2::aes(x = x, y = y)) +
    ggplot2::geom_point() +
    xy_theme()
  expect_true(!is.null(p))

})
