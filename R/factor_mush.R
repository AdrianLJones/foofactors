factor_mush <- function(factor_to_mush, levels_to_mush, mush_name) {
  factor_levels <- levels(factor_to_mush)
  factor_mush_index <- factor_levels %in% levels_to_mush
  factor_levels[factor_mush_index] <- mush_name
  levels(factor_to_mush) <- factor_levels
  return(factor_to_mush)
}
