% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{apply_all_models}
\alias{apply_all_models}
\title{Fit several forecast models}
\usage{
apply_all_models(x)
}
\arguments{
\item{x}{A ts object.}
}
\value{
A list of forecast objects from apply_selected_model()
}
\description{
Create a list of all possible forecast models for the inputed time series object.
}
\details{
This functions loops the output from available_models(), uses it as the
model.name argument for apply_selected_model() and return a list of length
18 in which each element is a forecast model.
Depending on some of the characteristics of the time series object used as
the input for this function, the model might not be created. For example,
if you try to fit a neural network model to a short time series, it will
return an error and fail to create the fit. In order to overcome this issue,
if the model returns an error, it will return a NA as the list element
instead.
}
\examples{
apply_all_models(austres)
}

