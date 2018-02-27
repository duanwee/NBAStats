#' NBA Oldest Player of a year
#'
#' Take year input, returns oldest players.
#' @param Year 
#' @keywords oldest
#' @export
#' @examples
#' NBA_oldest(1998)

NBA_oldest <- function(x) {
  a <- dplyr::filter(NBA, Year == x) %>% dplyr::filter(Age == max(Age))
  print(a[[2]])
}
