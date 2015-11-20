#' Combine Specific Levels of a Factor
#'
#' Often I was to combine two or more levels of a Factor into a new level that represents all of them in a new factor vector.
#'
#' @param factor_to_mush The factor that I want to edit.
#' @param levels_to_mush A character vector of the names of the levels you want to combine
#' @param mush_name The name of the newly created combined level.
#'
#' @return factor
#' @export
#'
#' @examples
#' test <- as.factor(c("a", "b", "c","c", "b", "a", "a1", "b1", "c1"))
#' factor_mush(test, c("a", "c"), "ac")

factor_mush <- function(factor_to_mush, levels_to_mush, mush_name) {

  #Input testing
  if(is.factor(factor_to_mush) == FALSE) {
    stop('factor_to_mush not a factor')
  }

  if(length(mush_name) != 1) {
    stop('mush_name must be length one')
  }

  if(is.character(mush_name) == FALSE) {
    stop('mush_name must be character')
  }

  if(all(levels_to_mush %in% levels(factor_to_mush)) == FALSE){
    stop('your levels_to_mush are not a subset of the factor_levels')
  }

  #End Input testing

  factor_levels <- levels(factor_to_mush)
  factor_mush_index <- factor_levels %in% levels_to_mush
  factor_levels[factor_mush_index] <- mush_name
  levels(factor_to_mush) <- factor_levels
  return(factor_to_mush)
}
