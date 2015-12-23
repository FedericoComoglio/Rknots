\name{HOMFLY2Jones}
\alias{HOMFLY2Jones}
\alias{HOMFLY2Alexander}

\title{
Convert the HOMFLY polynomial into the Alexander or Jones polynomials
}

\description{
Convert the HOMFLY polynomial into the Alexander or Jones polynomials
}

\usage{
HOMFLY2Alexander(HOMFLY)
HOMFLY2Jones(HOMFLY)
}

\arguments{
  \item{HOMFLY}{a single element character vector containing the HOMFLY polynomial}
}

\details{
The Alexander polynomial is obtained by substituting into the HOMFLY polynomial
\deqn{l=1}
and
\deqn{m=x^{1/2} - x^{-1/2}}
The following substitutions lead instead to the Jones polynomial
\deqn{l=t^{-1}}
and
\deqn{m=t^{1/2} - t^{-1/2}}
}

\value{The Alexander or the Jones polynomial}

\note{
These are low-level functions.
}

\references{
	Freyd P, Yetter D, Hoste J, Lickorish WBR, Millett K, et al.
	 (1985) A new polynomial invariant of knots and links. Bull Amer Math Soc (NS) 12: 239-246.
	
	Kauffman, L. Knots and Physics. Teaneck, NJ: World Scientific, p. 19, 1991.
}

\author{
Federico Comoglio, federico.comoglio@bsse.ethz.ch

Maurizio Rinaldi, maurizio.rinaldi@pharm.unipmn.it
}


\seealso{
\code{\link{HOMFLYpolynomial}}
}

\examples{
\dontrun{
HOMFLY.trefoil <- "-1/l**4 + 2/l**2 + m**2/l**2"
HOMFLY2Alexander(HOMFLY.trefoil)
HOMFLY2Jones(HOMFLY.trefoil)
}
}

\keyword{utilities}