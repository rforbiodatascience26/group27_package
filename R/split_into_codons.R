#' Splitting into Codons
#'
#' @param rna_string a character string, could also be a dna string
#' @param start indicates where in the string the function starts
#'
#' @returns a substring of the original character string where the characters are divided into groups of three
#' @export
#'
#' @examples
#' rna_string <- "AUGCGAUCA"
#' split_into_codons(rna_string)
#' #output becomes: "AUG" "CGA" "UCA"
split_into_codons <- function(rna_string, start = 1){
  bases_n <- nchar(rna_string)
  codons <- substring(rna_string,
                      first = seq(from = start, to = bases_n-3+1, by = 3),
                      last = seq(from = 3+start-1, to = bases_n, by = 3))
  return(codons)
}
