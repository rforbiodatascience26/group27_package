set.seed(123)
test_that("DNA sequence generated", {
  expect_equal(generate_dna_sequence(9), "GGGTGTTTG")
})
