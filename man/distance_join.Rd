% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distance_join.R
\name{distance_join}
\alias{distance_anti_join}
\alias{distance_full_join}
\alias{distance_inner_join}
\alias{distance_join}
\alias{distance_left_join}
\alias{distance_right_join}
\alias{distance_semi_join}
\title{Join two tables based on a distance metric of one or more columns}
\usage{
distance_join(x, y, by = NULL, max_dist = 1, method = c("euclidean",
  "manhattan"), mode = "inner")

distance_inner_join(x, y, by = NULL, method = "euclidean", max_dist = 1)

distance_left_join(x, y, by = NULL, method = "euclidean", max_dist = 1)

distance_right_join(x, y, by = NULL, method = "euclidean", max_dist = 1)

distance_full_join(x, y, by = NULL, method = "euclidean", max_dist = 1)

distance_semi_join(x, y, by = NULL, method = "euclidean", max_dist = 1)

distance_anti_join(x, y, by = NULL, method = "euclidean", max_dist = 1)
}
\arguments{
\item{x}{A tbl}

\item{y}{A tbl}

\item{by}{Columns by which to join the two tables}

\item{max_dist}{Maximum distance to use for joining}

\item{method}{Method to use for computing distance, either euclidean (default)
or manhattan.}

\item{mode}{One of "inner", "left", "right", "full" "semi", or "anti"}
}
\description{
This differs from \code{\link{difference_join}} in that it considers
all of the columns together when computing distance. This allows it
to use metrics such as Euclidean or Manhattan that depend on multiple
columns. Note that if you are computing with longitude or latitude,
you probably want to use \code{\link{geo_join}}.
}
\examples{

library(dplyr)

head(iris)
sepal_lengths <- data_frame(Sepal.Length = c(5, 6, 7),
                            Sepal.Width = 1:3)

iris \%>\%
  distance_inner_join(sepal_lengths, max_dist = 2)

}

