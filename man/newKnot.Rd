\name{newKnot}
\alias{newKnot}

\title{
Create a Knot object
}

\description{
This function creates a knot object from a matrix of 3D points coordinates and a vector of separators (for links)
}

\usage{
newKnot(points3D, ends)
}

\arguments{
	\item{points3D}{
		An \eqn{N} x 3 matrix containing the \eqn{x}, \eqn{y}, \eqn{z} coordinates of points
		of a polygonal knot or link. Each row then contains the 3D coordinates of a single point of the structure.
		}
	\item{ends}{
		A vector of integers containing the separators of the link components. 
		A separator can be seen as the index of the edge that if not removed would connect a component with the following.
		This slot is automatically set to \code{numeric(0)} for knots
		}
}

\note{ 
Note: This is a summary for reference. For a more detailed explanation, please see the vignette.
}

\seealso{
\code{\link{Knot-class}}, \code{\link{makeExampleKnot}}
}

\value{
   an object of class Knot
}

\author{
	Federico Comoglio, federico.comoglio@bsse.ethz.ch
}

\examples{
knot <- makeExampleKnot(k = TRUE)
newKnot(knot)

link <- makeExampleKnot(k = FALSE)
newKnot(link$points3D, link$ends)
}

\keyword{utilities}