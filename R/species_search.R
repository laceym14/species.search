#' Return a spatial dataset with information on species localities
#'
#' @details Loads data on a queried species using the package spocc
#'
#' @param Prompts user input for the scientific name of the search species
#'
#' @return A spatial data set containing information from BISON, GBIF, and
#' iNaturalist on the queried species
#'
#' @export

species_search <- function() {
  n <- readline(prompt="Enter a species scientific name: ")
  n <- as.character(n)
  sp_search <- occ(query = c(n), from = c('bison', 'gbif', 'inat'))
  sp_data <- occ2df(sp_search)
  return(sp_data)
}
