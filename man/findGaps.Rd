\name{findGaps}
\alias{findGaps}

\title{
Find gaps in proteins based on euclidean distance between residues of the backbone
}

\description{
Find gaps in proteins based on euclidean distance between residues of the backbone. 
Return gap positions and accordingly split a chain in subchains.
}

\usage{
findGaps(points3D, cutoff = 7)
}

\arguments{
  \item{points3D}{an \eqn{N} x 3 matrix of the \eqn{x}, \eqn{y}, \eqn{z} coordinates of a polygonal link}
   \item{cutoff}{numeric (in Angstrom), distances between consecutive alpha-Carbon atoms
   greater than \code{cutoff} are considered as gaps.
}
}

\details{
Default \code{cutoff} is set to 7, approximately twice the average distance between two consecutive alpha-Carbon atoms.
}

\value{
a list of matrices containing the \eqn{x}, \eqn{y}, \eqn{z} coordinates of the split chains. 
}

\author{
Federico Comoglio, federico.comoglio@bsse.ethz.ch
}

\note{
Gap finding is highly recommended.  Notice that it is performed by default by \code{loadProtein} and that
in the following example this option has been disabled by purpose.
This is a low-level function.
}

\seealso{
\code{\link{loadProtein}}
}

\examples{
## Import a PDB file from the file system
if(require(bio3d)) {
	fn <- system.file("extdata/1AJC_chainA.pdb", package="Rknots")
	protein <- loadProtein(fn, join.gaps = TRUE)
	str(protein)
	protein.g <- findGaps(protein$A, cutoff = 7)
	str(protein.g)
}
}

\keyword{utilities}
\keyword{proteins}