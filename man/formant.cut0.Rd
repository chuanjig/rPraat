% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formant.R
\name{formant.cut0}
\alias{formant.cut0}
\title{formant.cut0}
\usage{
formant.cut0(formant, tStart = -Inf, tEnd = Inf)
}
\arguments{
\item{formant}{Formant object (either in Frame or Array format)}

\item{tStart}{beginning time of interval to be cut (default \code{-Inf} = cut from the \code{xmin} of the Formant)}

\item{tEnd}{final time of interval to be cut (default \code{Inf} = cut to the \code{xmax} of the Formant)}
}
\value{
Formant object
}
\description{
Cut the specified interval from the Formant object and shift time so that the new \code{xmin} = 0
}
\examples{
formant <- formant.sample()
formant2 <-   formant.cut(formant,  tStart = 3)
formant2_0 <- formant.cut0(formant, tStart = 3)
formant3 <-   formant.cut(formant,  tStart = 2, tEnd = 3)
formant3_0 <- formant.cut0(formant, tStart = 2, tEnd = 3)
formant4 <-   formant.cut(formant,  tEnd = 1)
formant4_0 <- formant.cut0(formant, tEnd = 1)
formant5 <-   formant.cut(formant,  tStart = -1, tEnd = 1)
formant5_0 <- formant.cut0(formant, tStart = -1, tEnd = 1)
\dontrun{
formant.plot(formant)
formant.plot(formant2)
formant.plot(formant2_0)
formant.plot(formant3)
formant.plot(formant3_0)
formant.plot(formant4)
formant.plot(formant4_0)
formant.plot(formant5)
formant.plot(formant5_0)
}
}
\seealso{
\code{\link{formant.cut}}, \code{\link{tg.cut}}, \code{\link{tg.cut0}}, \code{\link{formant.read}}, \code{\link{formant.plot}}
}
