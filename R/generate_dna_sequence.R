#' Generate a Random DNA Sequence
#'
#' @param sequence_length An integer specifying the number of nucleotides to generate.
#'
#' @return A character string of concatenated DNA bases (A, T, G, C).
#' @export
#'
#' @examples
#' sequence_length <- 9
#' generate_dna_sequence(sequence_length)
#' # Output will look like: "ATGCGATCA"
generate_dna_sequence <- function(sequence_length) {
  nucleotides <- sample(c("A", "T", "G", "C"), size = sequence_length, replace = TRUE)
  dna_string <- paste0(nucleotides, collapse = "")
  return(dna_string)
}
