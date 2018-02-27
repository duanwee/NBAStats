#' NBA Most Point Player of a year
#'
#' Take year input, returns players who scored the most points.
#' @param Year 
#' @keywords most_point
#' @export
#' @examples
#' NBA_most_point(1998)

NBA_most_point <- function(x) {
  a <- dplyr::filter(NBA, Year == x) %>% dplyr::filter(PTS == max(PTS))
  print(a[[2]])
}
