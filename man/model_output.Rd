% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/runmodel.R
\name{model_output}
\alias{model_output}
\title{Multiple Regression Output}
\usage{
model_output(models, data, checkList = NULL, formulas, outliers)
}
\arguments{
\item{models}{A list of \code{lm} model objects.  A set of model objects
created by \code{create_model_object}.}

\item{data}{The dataframe from which the model was built.}

\item{checkList}{a list object created by \code{assumptions_check} used to
create output.}

\item{formulas}{Formula list produced by \code{create_formula_objects}, used
for summary table.}

\item{outliers}{Outlier option, select the number of observations to examine
for outliers.}
}
\description{
Multiple Regression Output
}
\details{
Creates plots and text output to summarize models and check
  assumptions via objects created by \code{assumptions_check}.  Uses full
  model with all predictors.
}
\examples{
freeny_model_formulas <- create_formula_objects("y",
c("lag.quarterly.revenue"), c("price.index"))
freeny_models <- create_model_objects(freeny_model_formulas,
dataset = freeny)
freeny_model <- freeny_models[[length(freeny_models)]]
checks <- assumptions_check(freeny_model)
model_output(freeny_models, freeny, checks, freeny_model_formulas,
outliers = "significant")
}

