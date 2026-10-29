test_that("splitting into codons works", {
  expect_equal(split_into_codons("AUGCGAUCA"), c("AUG", "CGA", "UCA"))
})
