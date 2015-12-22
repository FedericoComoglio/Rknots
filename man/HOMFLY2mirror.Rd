\name{HOMFLY2mirror}
\alias{HOMFLY2mirror}

\title{
Convert the HOMFLY polynomial of a knot into the polynomial of its mirror image
}
\description{
The HOMFLY polynomial of the mirror image of a knot is computed by substituting \deqn{l = -l^-1}
}

\usage{
HOMFLY2mirror(HOMFLY)
}

\arguments{
  \item{HOMFLY}{a single element character vector containing the HOMFLY polynomial
}
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
\code{\link{HOMFLYpolynomial}},
\code{\link{HOMFLY2Alexander}},
\code{\link{HOMFLY2Jones}}
}

\examples{
\dontrun{
##convert the right-handed trefoil knot polynomial into the left-handed trefoil polynomial
HOMFLY.trefoil <- "-1/l**4 + 2/l**2 + m**2/l**2"
HOMFLY2mirror(HOMFLY.trefoil)
}
}

\keyword{utilities}