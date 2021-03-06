% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/table_functions.R
\name{UL10}
\alias{UL10}
\title{Danish mortgage banks lending activity}
\usage{
UL10(DATATYP20, EJKAT20, LANTYP20, OMR20, Tid, lang = "en")
}
\arguments{
\item{DATATYP20}{is the datatype. Call realestateDK::table_vars("UL10") to see all available parameter settings.}

\item{EJKAT20}{is the property category. Call realestateDK::table_vars("UL10") to see all available parameter settings.}

\item{LANTYP20}{is the loan type. Call realestateDK::table_vars("UL10") to see all available parameter settings.}

\item{OMR20}{is the area. Call realestateDK::table_vars("UL10") to see all available parameter settings.}

\item{Tid}{is the time. Call realestateDK::table_vars("UL10") to see all available parameter settings.}

\item{lang}{whether to return the data in english or danish.}
}
\value{
a tibble
}
\description{
Danish mortgage banks lending activity by area, datatype, property category, loan type and time
}
\examples{
realestateDK::UL10(DATATYP20 = "2", EJKAT20 = "11", LANTYP20 = "111", OMR20 = "A", Tid = "1995K1")
}
\references{
\url{http://rkr.statistikbank.dk/UL10}
}
