\name{skeinIterator}
\alias{skeinIterator}

\title{Iterate the skein relation to build a skein tree of a polygonal link}

\description{
This function is required for the computation of the skein tree
of a polygonal link. The tree is built by iterating the skein relation and geometrically
constructing the \eqn{L_0} and \eqn{L_{sw}} configuration (of a Conway skein triple).
}

\usage{skeinIterator(points3D, ends, M = c())
}

\arguments{
 \item{points3D}{an \eqn{N} x 3 matrix of the \eqn{x}, \eqn{y}, \eqn{z} coordinates of a polygonal link}
  \item{ends}{a vector of positive integers defining the separators of the polygonal link}
  \item{M}{the intersection matrix of the polygonal link}
}

\value{
	\item{leaves}{a list containing the binary indices of the tree leaves}
	\item{tree}{a list containing the skein tree. Each slot contains the slots
	\code{points3D}, \code{ends}, \code{signs} and \code{M}, which are respectively the 
	coordinates, separators of the current configuration, the skein signs of the
	ancestors (inner vertices) and the intersection matrix of the current configuration.}
}

\references{
	Freyd P, Yetter D, Hoste J, Lickorish WBR, Millett K, et al.
	 (1985) A new polynomial invariant of knots and links. Bull Amer Math Soc (NS) 12: 239-246.
	
	Kauffman, L. Knots and Physics. Teaneck, NJ: World Scientific, p. 19, 1991.
	
	Comoglio F. and Rinaldi M. A Topological Framework for the Computation of the HOMFLY Polynomial and Its Application to Proteins (2011) 
	PLoS ONE 6(4): e18693, doi:10.1371/journal.pone.0018693 
	ArXiv:1104.3405
}

\author{
Federico Comoglio, federico.comoglio@bsse.ethz.ch
}

\seealso{
\code{\link{HOMFLYpolynomial}},
}

\examples{
if(require(bio3d)) {
	protein <- makeExampleProtein()
	protein <- AlexanderBriggs(protein$A)

	## Compute the skein tree
	tree <- skeinIterator(protein$points3D, protein$ends)
	str(tree)
}
}

\keyword{invariants}
