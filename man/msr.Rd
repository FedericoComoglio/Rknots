\name{msr}
\alias{msr}

\title{
Minimal Structure Reduction
}

\description{
Reduce a polygonal link to its minimal structure by applying Generalized Reidemeister Moves.
}

\usage{
msr(points3D, ends = c(), n = 100)
}

\arguments{
  \item{points3D}{an \eqn{N} x 3 matrix of the \eqn{x}, \eqn{y}, \eqn{z} coordinates of a polygonal link
}
  \item{ends}{a vector of positive integers defining the separators of the polygonal link
}
  \item{n}{the number of iterations
}
}

\details{A minimal structure for a polygonal link \eqn{L} is a nested sequence of subsets of \eqn{L}:
\deqn{L \supset L_1 \supset \ldots \supset L_N} that cannot be extended. 
Each inclusion corresponds to a Generalized Reidemeister Move.
}

\value{
Returns a list of three elements
  \item{points3D}{an \eqn{M} x 3 matrix of the \eqn{x}, \eqn{y}, \eqn{z} coordinates of the reduced structure}
  \item{ends}{a vector of positive integers (if a non empty \code{ends} 
  has been provided as an argument defining the separators of the reduced structure}
  \item{M}{the intersection matrix of the reduced structure}
}

\note{
This is a low-level function.
}

\references{
Comoglio F. and Rinaldi M. A Topological Framework for the Computation of the HOMFLY Polynomial and Its Application to Proteins (2011) 
PLoS ONE 6(4): e18693, doi:10.1371/journal.pone.0018693 
ArXiv:1104.3405
}

\author{
Federico Comoglio, federico.comoglio@bsse.ethz.ch
}

\note{
The default number of iterations is 100. This value almost always allows to reach the minimal structure.
If wished, a partial reduction can be achieved with \code{n} between 2 and 5. This is particularly suitable for
graphical representations of the reduction process.
}


\examples{

knot <- makeExampleKnot()
reduced <- msr(points3D = knot)

## 3D plot of both the trefoil and its reduced structure
require(rgl)
plotKnot3D(knot, ends = c(), radius = 0.01, lwd = 2.5)
plotKnot3D(reduced$points3D, reduced$ends, colors = 'red', radius = 0.1, lwd = 2.5)
}

\keyword{structurereduction}
