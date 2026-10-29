#' Transcribe a DNA Sequence
#'
#' @param dna_string
#'
#' @returns A character string of concatenated RNA bases (A, U, G, C)
#' @export
#'
#' @examples
#' dna_string <- "ATGCGATCATAG"
#' transcribe(dna_string)
#' # Output will look like: "AUGCGAUCAUAG"
transcribe <- function(dna_string){
  rna_string <- gsub("T", "U", dna_string)
  return(rna_string)
}
