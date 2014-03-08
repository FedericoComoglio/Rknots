\name{Knot-class}
\docType{class}
\alias{Knot-class}

\title{Class "Knot" -- a container for knot and link coordinates and ends}
\description{This is the main class for the present package.}
\section{Objects from the Class}{
Objects should be created with calls to \code{\link{newKnot}}.
}

\note{ 
Note: This is a summary for reference. For a detailed explanation, please see the vignette.
The slot \code{points3D} contains the 3D coordinates of points of a polygonal knot or link as an \eqn{N} x 3 matrix.
The slot \code{ends} contains a vector of link separators. This is automatically set to \code{numeric(0)} for knots.
}

\seealso{
\code{\link{newKnot}}, \code{\link{makeExampleKnot}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{
# create an object of class 'Knot' by using new
link <- makeExampleKnot( k = FALSE )
new('Knot', points3D = link$points3D, ends = link$ends)

#or by means of the constructor
newKnot(points3D = link$points3D, ends = link$ends)

#for knots, it is sufficient to specify the 3D coordinates
#ends are set by default to numeric(0)
knot <- makeExampleKnot( k = TRUE )
newKnot(points3D = knot)

#for creating an example, use makeExampleKnot.
#knot: 
makeExampleKnot(k = TRUE)
#link:
makeExampleKnot(k = FALSE)
}

\keyword{class}