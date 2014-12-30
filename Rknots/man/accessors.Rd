\name{getCoordinates-methods}
\docType{methods}
\alias{getCoordinates-methods}
\alias{getCoordinates,Knot-method}
\alias{getCoordinates}
\alias{[-methods}
\alias{[}
\alias{[,Knot-method}
\alias{getEnds-methods}
\alias{getEnds,Knot-method}
\alias{getEnds}

\title{Accessors for the 'points3D' and 'ends' slots of a Knot object.}

\description{
The points3D slot holds the \eqn{N} x 3 matrix containing 
	the \eqn{x}, \eqn{y}, \eqn{z} coordinates of the points of a knot or a link.
	
The ends slot is a vector of integers containing the separators of the link components.
	
}

\section{Methods}{
\describe{

\item{\code{signature(object = "Knot")}}{
an object of class Knot.
%%  ~~describe this method here~~
}
}}

\seealso{
\code{\link{Knot-class}}
}

\author{
   Federico Comoglio, federico.comoglio@bsse.ethz.ch
}

\examples{
knot <- makeExampleKnot(k = TRUE)
knot <- newKnot(knot)

getCoordinates(knot)
getEnds(knot)
}   

\keyword{methods}

   