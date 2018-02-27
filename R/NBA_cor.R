#' NBA correlation matrix for numeric continuous variables of a year
#'
#' Take year input, returns correlation matrix for numeric continuous variables.
#' @param Year 
#' @keywords correlation matrix
#' @export
#' @examples
#' NBA_cor(1998)

NBA_cor <- function(x) {
  a <- dplyr::filter(NBA, Year == x) %>% purrr::keep(is.numeric)
  cor(a )
}
