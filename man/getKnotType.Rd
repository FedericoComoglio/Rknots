\name{getKnotType}
\alias{getKnotType}

\title{
Given a polynomial invariant, obtain information on the knot type}

\description{
Given a polynomial invariant, obtain information on the knot type. Additionally, other polynomials are returned if wished
}

\usage{
getKnotType( polynomial, invariant = 'HOMFLY', full.output = FALSE )
}

\arguments{
  \item{polynomial}{a single element character vector containing a polynomial invariant as returned by \code{computeInvariant}}
  \item{invariant}{the type of \code{polynomial}. It can assume values among \code{'HOMFLY'}, \code{'Jones'} and \code{'Alexander'}}
  \item{full.output}{logical, define the output type. If TRUE, the polynomial provided in input is converted to other polynomials. The knot type, an URL to retrieve additional information on the knot type and the full set of invariants are returned. If FALSE, only the knot type is returned. Default to FALSE.}
}

\value{The knot type (the simplest knot having the input polynomial). Optionally, additional informations on it.}


\references{
	The Rolfsen Knot Table on Knot Atlas, \url{http://www.math.toronto.edu/~drorbn/KAtlas/Knots}
}

\author{
Federico Comoglio, federico.comoglio@bsse.ethz.ch
}


\seealso{
\code{\link{computeInvariant}}
}

\examples{
#suppose you obtain the following HOMFLY polynomial (e.g. via computeInvariant)
polynomial <- 'l^(-4) - 1/l^2 + l^2 - m^2 - m^2/l^2'
getKnotType(polynomial = polynomial, invariant='HOMFLY')
#get more information of the Stevedore's knot
getKnotType(polynomial = polynomial, invariant='HOMFLY', full.output = TRUE)
}

\keyword{utilities}