% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/factor_mush.R
\name{factor_mush}
\alias{factor_mush}
\title{Combine Specific Levels of a Factor}
\usage{
factor_mush(factor_to_mush, levels_to_mush, mush_name)
}
\arguments{
\item{factor_to_mush}{The factor that I want to edit.}

\item{levels_to_mush}{A character vector of the names of the levels you want to combine}

\item{mush_name}{The name of the newly created combined level.}
}
\value{
factor
}
\description{
Often I was to combine two or more levels of a Factor into a new level that represents all of them in a new factor vector.
}
\examples{
test <- as.factor(c("a", "b", "c","c", "b", "a", "a1", "b1", "c1"))
factor_mush(test, c("a", "c"), "ac")
}

