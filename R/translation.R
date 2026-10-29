#' Translation
#'
#' @param codons a vector of codon strings
#'
#' @returns a character string of amino acids
#' @export
#'
#' @examples
#' codons <- c("AUG","CGA","UCA")
#' translation(codons)
#' #output becomes: "MRS"
translation <- function(codons){
  amino_acids <- paste0(codon_table[codons], collapse = "")
  return(amino_acids)
}
