context("test-my-test.R")

test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("test plot KM works", {
  library(survival)
  library(survminer)
  extrafont::loadfonts()
  data(myeloma)
  clin <- Surv(myeloma$time, myeloma$event)
  labs <- factor(myeloma$molecular_group)
  plot_KMCurve(clin, labs)
})