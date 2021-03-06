% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inspect_types.R
\name{inspect_types}
\alias{inspect_types}
\title{Summary and comparison of column types}
\usage{
inspect_types(df1, df2 = NULL, compare_index = FALSE)
}
\arguments{
\item{df1}{A dataframe.}

\item{df2}{An optional second dataframe for comparison.}

\item{compare_index}{Whether to check column positions as well as types when comparing dataframes.
Defaults to \code{FALSE}.}
}
\value{
A tibble summarising the count and percentage of different 
column types for one or a pair of data frames.
}
\description{
For a single dataframe, summarise the column types.  If two 
dataframes are supplied, compare column type composition of both dataframes.
}
\details{
For a \strong{single dataframe}, the tibble returned contains the columns: \cr
\itemize{
  \item \code{type}, a character vector containing the column types in \code{df1}.
  \item \code{cnt}, integer counts of each type.
  \item \code{pcnt}, the percentage of all columns with each type.
  \item \code{col_name}, the names of columns with each type. \cr
}
For a \strong{pair of dataframes}, the tibble returned contains the columns: \cr
\itemize{
  \item \code{type}, a character vector containing the column types in 
  \code{df1} and \code{df2}.
  \item \code{cnt_1}, \code{cnt_2}, pair of integer columns containing counts of each type - 
  in each of \code{df1} and \code{df2}
}
For a \strong{grouped dataframe}, the tibble returned is as for a single dataframe, but where 
the first \code{k} columns are the grouping columns.  There will be as many rows in the result 
as there are unique combinations of the grouping variables.
}
\examples{
# Load dplyr for starwars data & pipe
library(dplyr)

# Single dataframe summary
inspect_types(starwars)

# Paired dataframe comparison
inspect_types(starwars, starwars[1:20, ])
}
\seealso{
\code{\link{show_plot}}
}
\author{
Alastair Rushworth
}
