\name{reduceStructure}
\alias{reduceStructure}

\title{Structure reduction of an object of class 'Knot'}

\description{
Apply the Alexander-Briggs reduction or the Minimal Structure Reduction algorithm to a knot or a link stored in a 'Knot' object.
}

\usage{
	reduceStructure(knot, algorithm = 'AB')
}

\arguments{
  \item{knot}{an object of class 'Knot'}

  \item{algorithm}{'AB' (default) for the Alexander-Briggs reduction scheme, 
  'MSR' for the Minimal Structure Reduction algorithm.}
}

\value{
an object of class 'Knot' containing the reduced structure
}

\references{
Reidemeister K (1926), Abh Math Sem Univ Hamburg 5: 24-32.

Alexander JW, Briggs GB (1926) On types of knotted curves. Ann of Math 28: 562-586.

Comoglio F. and Rinaldi M. A Topological Framework for the Computation of the HOMFLY Polynomial and Its Application to Proteins (2011) 
PLoS ONE 6(4): e18693, doi:10.1371/journal.pone.0018693 
ArXiv:1104.3405
}

\seealso{
\code{\link{Knot-class}}
}

\author{
   Federico Comoglio, federico.comoglio@bsse.ethz.ch
}

\examples{
knot <- makeExampleKnot(k = TRUE)
knot <- newKnot(knot)

##reduce the structure
reduceStructure(knot, 'AB')
reduceStructure(knot, 'MSR')
}

\keyword{structurereduction}