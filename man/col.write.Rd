% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/col.R
\name{col.write}
\alias{col.write}
\title{col.write}
\usage{
col.write(col, fileNameCollection, format = "short")
}
\arguments{
\item{col}{Collection object = list of objects (\code{col[[1]]}, \code{col[[2]]}, etc.) with \code{class(col[[i]])["type"]} and \code{class(col[[i]])["name"]} parameters set}

\item{fileNameCollection}{file name to be created}

\item{format}{Output file format (\code{"short"} (short text format) or \code{"text"} (a.k.a. full text format))}
}
\description{
Saves Collection of objects to a file (in UTF-8 encoding). \code{col} is list of objects, each item \code{col[[i]]} must contain \code{class(col[[i]])["type"]} ("TextGrid", "PitchTier", "IntensityTier", "Pitch 1", or "Formant 2") and \code{class(col[[i]])["name"]} (name of the object) parameters set.
These parameters can be created easily using "as.something()" functions: \code{as.tg()}, \code{as.pt()}, \code{as.it()}, \code{as.pitch()}, \code{as.formant()}
}
\details{
Sound objects in \code{col.read()} and \code{col.write()} are not supported at this moment because they would occupy too much disc space in text format.
}
\examples{
\dontrun{
col <- list(as.tg(tg.sample(), "My textgrid"), as.pt(pt.sample(), "My PitchTier 1"),
       as.pt(pt.Hz2ST(pt.sample()), "My PitchTier 2"), as.it(it.sample(), "My IntensityTier"),
       as.pitch(pitch.sample(), "My Pitch"), as.formant(formant.sample(), "My Formant"))
col.write(col, "my_collection.Collection")
}
}
\seealso{
\code{\link{col.read}}
}
