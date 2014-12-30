\name{PCAProjection}
\alias{PCAProjection}

\title{Two-dimensional projection by Principal Component Analysis}

\description{Two-dimensional projection by Principal Component Analysis}

\usage{
PCAProjection(points3D)
}

\arguments{
  \item{points3D}{an \eqn{N} x 3 matrix of the \eqn{x}, \eqn{y}, \eqn{z} coordinates of a polygonal link
}
}

\value{
  \item{points3D.rot}{an N x 3 matrix containing the x, y, z coordinates of the 
  rotated structure. The first two columns represent the 2D projection of the structure.
  }
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
This is a low-level function.
}

\examples{
\dontrun{
if(require(bio3d)) {
	protein <- loadProtein('3MDZ')
  	par(mfrow = c(1,2))
	plotDiagram(protein$A, ends = c(), lwd = 2.5, main = 'Original')
	
	protein.rot <- PCAProjection(protein$A)
	plotDiagram(protein.rot, ends = c(), lwd = 2.5, main = 'Reduced')
}
}
}

\keyword{utilities}