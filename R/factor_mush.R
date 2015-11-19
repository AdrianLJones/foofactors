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
  factor_levels <- levels(factor_to_mush)
  factor_mush_index <- factor_levels %in% levels_to_mush
  factor_levels[factor_mush_index] <- mush_name
  levels(factor_to_mush) <- factor_levels
  return(factor_to_mush)
}
