\name{link.table}
\docType{data}
\alias{link.table}

\title{Three dimensional coordinates and separators of polygonal links.
}

\description{
	This data set contains the three dimensional coordinates of 
	130 polygonal links (up to 4 components) along with the relevant separators.
}

\usage{
data(link.table)
}

\format{
A list of lists. Each element is a matrix containing coordinates and separators of a polygonal link.
}

\references{
	The COLAB SFU website, \url{http://www.colab.sfu.ca}
}

\note{
	A single entry can be accessed by [[ or using the corresponding link name.
	
	\code{names(link.table)} returns the available link names. 
	For example, the Hopf link can be accessed either by \code{link.table[[1]]} or by \code{link.table$"2.2.1"}.
}

\examples{
data(link.table)
names(link.table)
str(link.table)
}


\keyword{datasets}