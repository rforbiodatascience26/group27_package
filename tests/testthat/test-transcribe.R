test_that("RNA sequence transcribed", {
  expect_equal(transcribe(dna_string = "ATGCGATCATAG"), "AUGCGAUCAUAG")
})
