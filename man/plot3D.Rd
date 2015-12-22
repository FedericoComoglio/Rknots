\name{plot3D}
\alias{plot3D}

\title{3D plot of an object of class 'Knot'}

\description{Returns the 3D plot of an object of class 'Knot'
}

\usage{
	plot3D(knot, ...)
}

\arguments{
  \item{knot}{an object of class 'Knot'}
  
  \item{\dots}{other parameters for \code{lines3d} or \code{spheres3d}}
}

\value{
called for its effect.
}

\author{
   Federico Comoglio, federico.comoglio@bsse.ethz.ch
}

\examples{
\dontrun{
link <- makeExampleKnot(k = FALSE)
link <- newKnot(link$points3D, link$ends)

##plot with rgl
require(rgl)
plot3D(link)
plot3D(link, radius = 0.1)
plot3D(link, radius = 0.1, lwd = 10)
}
}

\keyword{graphics}