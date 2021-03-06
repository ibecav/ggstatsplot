% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kendall_w_ci.R
\name{kendall_w_ci}
\alias{kendall_w_ci}
\title{Computing confidence intervals for the Kendall's coefficient of
concordance (aka Kendall's \emph{W}).}
\usage{
kendall_w_ci(data, nboot = 100, conf.type = "norm",
  conf.level = 0.95, ...)
}
\arguments{
\item{data}{Data in wide format with only numeric columns corresponding to
raters' ratings.}

\item{nboot}{Number of bootstrap samples for computing confidence interval
for the effect size (Default: \code{100}).}

\item{conf.type}{A vector of character strings representing the type of
intervals required. The value should be any subset of the values \code{"norm"},
\code{"basic"}, \code{"perc"}, \code{"bca"}. For more, see \code{?boot::boot.ci}.}

\item{conf.level}{Scalar between 0 and 1. If unspecified, the defaults return
\code{95\%} lower and upper confidence intervals (\code{0.95}).}

\item{...}{Additional arguments (currently ignored).}
}
\description{
Computing confidence intervals for the Kendall's coefficient of
concordance (aka Kendall's \emph{W}).
}
\examples{
set.seed(123)
library(jmv)
data("bugs", package = "jmv")
ggstatsplot:::kendall_w_ci(dplyr::select(bugs, LDLF:HDHF))
}
\author{
Indrajeet Patil
}
\keyword{internal}
