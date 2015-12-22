\name{mVA}
\alias{mVA}

\title{Compute the multivariable Alexander polynomial of a polygonal link}

\description{Computes the multivariable Alexander polynomial (MVA) of a polygonal link.}

\usage{mVA(points3D, ends, normalized = FALSE, return.A = FALSE)}

\arguments{
  \item{points3D}{an \eqn{N} x 3 matrix of the \eqn{x}, \eqn{y}, \eqn{z} coordinates of a polygonal link}
  \item{ends}{a vector of positive integers defining the separators of the polygonal link}
  \item{normalized}{logical, if FALSE (default) the multivariable  non normalized MVA is returned, the normalized MVA otherwise}
  \item{return.A}{logical, if TRUE the Alexander matrix is returned in a format that can be parsed to sympy}
}

\details{
The polynomial computation relies on rSymPy. 
Please notice that the first time sympy is invoked is expected to be much slower than subsequent ones.
}

\value{
the multivariable Alexander polynomial
}

\references{
	Alexander J. W. (1928) Topological invariants of knots and links. Trans. Amer. Math. Soc. 30:  275-306.
	
	Conway J. H. (1970) An enumeration of knots and links, and some of their algebraic properties. Computational Problems in Abstract Algebra (Proc. Conf.,Oxford, 1967), Pergamon, Oxford: 329-358.

	Murakami J. (1993) A state model for the multivariable Alexander polynomial. Pacific J. Math. 157, no. 1: 109-135.

	Archibald J. (2008) The weight system of the multivariable Alexander polynomial.  Acta Math. Vietnamica. 33: 459-470.
 
	Archibald J. (2010) The Multivariable Alexander Polynomial on Tangles. PhD Thesis, Department of Mathematics University of Toronto

	Torres G. (1953) On the Alexander polynomial  Ann. Math. 57:  57-89.

	Comoglio F. and Rinaldi M. (2011) A Topological Framework for the Computation of the HOMFLY Polynomial and Its Application to Proteins, PLoS ONE 6(4): e18693, doi:10.1371/journal.pone.0018693 ArXiv:1104.3405
}

\author{
Maurizio Rinaldi, maurizio.rinaldi@pharm.unipmn.it
}

\note{
This is a low-level function. If you wish to make computations faster, reduce the structure first with
\code{AlexanderBriggs} or \code{msr}.
}

\seealso{
\code{\link{msr}},
\code{\link{AlexanderBriggs}}
}

\examples{
\dontrun{
link <- makeExampleKnot(k = FALSE)
mVA(points3D = link$points3D, ends = link$ends)
mVA(points3D = link$points3D, ends = link$ends, normalized = TRUE)
mVA(points3D = link$points3D, ends = link$ends, normalized = TRUE, return.A = TRUE)
}
}

\keyword{invariants}