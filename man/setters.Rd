\name{setCoordinates<--methods}
\docType{methods}
\alias{setCoordinates<--methods}
\alias{setCoordinates<-,Knot-method}
\alias{setCoordinates}
\alias{setCoordinates<-}
\alias{[<--methods}
\alias{[<-}
\alias{[<-,Knot-method}
\alias{setEnds<--methods}
\alias{setEnds<-,Knot-method}
\alias{setEnds}
\alias{setEnds<-}

\title{Setters for the 'points3D' and 'ends' slots of a Knot object.}

\description{
The points3D slot holds the \eqn{N} x 3 matrix containing 
	the \eqn{x}, \eqn{y}, \eqn{z} coordinates of the points.
	
The ends slot is a vector of integers containing the separators of the link components.
}
\section{Methods}{
\describe{

\item{\code{signature(object = "Knot")}}{
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
link <- makeExampleKnot(k = FALSE)
link <- newKnot(link$points3D, link$ends)

setCoordinates(link) <- matrix(runif(90), ncol = 3)
setEnds(link) <- c(10, 20)
}   

\keyword{methods}

