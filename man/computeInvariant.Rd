\name{computeInvariant}
\alias{computeInvariant}

\title{Compute an invariant of an object of class 'Knot'}

\description{
Compute one polynomial invariant (HOMFLY, Jones, Alexander, multivariable Alexander) of a knot or link, or the linking number of a link for
object of class 'Knot'.
}

\usage{
	computeInvariant(knot, invariant, ...)
}

\arguments{
  \item{knot}{an object of class 'Knot'}

  \item{invariant}{'HOMFLY' for the HOMFLY polynomial,
  'Alexander' for the Alexander polynomial (knots) or the multivariable Alexander polynomial (links),
  'Jones' for the Jones polynomial,
  'LK' for the linking number of a link}
  
  \item{...}{additional parameters to be passed to lower level functions (e.g. \code{skein.sign} for the HOMFLY polynomial computation}
}

\value{
the computed invariant
}

\references{
Freyd P, Yetter D, Hoste J, Lickorish WBR, Millett K, et al.
	 (1985) A new polynomial invariant of knots and links. Bull Amer Math Soc (NS) 12: 239-246.
	
	Kauffman, L. Knots and Physics. Teaneck, NJ: World Scientific, p. 19, 1991.
	
	Comoglio F. and Rinaldi M. (2011) A Topological Framework for the Computation of the HOMFLY Polynomial and Its Application to Proteins 
	PLoS ONE 6(4): e18693, doi:10.1371/journal.pone.0018693 
	ArXiv:1104.3405
	
	Alexander J. W. (1928) Topological invariants of knots and links. Trans. Amer. Math. Soc. 30:  275-306.
	
	Conway J. H. (1970) An enumeration of knots and links, and some of their algebraic properties. Computational Problems in Abstract Algebra (Proc. Conf.,Oxford, 1967), Pergamon, Oxford: 329-358.

	Murakami J. (1993) A state model for the multivariable Alexander polynomial. Pacific J. Math. 157, no. 1: 109-135.

	Archibald J, (2008) The weight system of the multivariable Alexander polynomial.  Acta Math. Vietnamica. 33: 459-470.
 
	Archibald  J. (2010) The Multivariable Alexander Polynomial on Tangles. PhD Thesis,Department of Mathematics University of Toronto

	Torres G. (1953) On the Alexander polynomial  Ann. Math. 57:  57-89.
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

##compute the polynomials
computeInvariant(knot, 'HOMFLY', skein.sign = -1)
computeInvariant(knot, 'Alexander')
}

\keyword{invariants}