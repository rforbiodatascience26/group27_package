#' Plot amino acids
#'
#' @param amino_acids
#'
#' @returns A plot of unique amino acids.
#' @export
#'
#' @examples None
count_amino_acids <- function(amino_acids){
  split_amino_acids <- amino_acids |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(split_amino_acids, function(amino_acids) stringr::str_count(string = amino_acids, pattern =  amino_acids)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Amino_acids"]] <- rownames(counts)

  plot_amino_acids <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_acids, y = Counts, fill = Amino_acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot_amino_acids)
}
