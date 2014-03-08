\name{plotKnot3D}
\alias{plotKnot3D}

\title{3D plot of a polygonal link}

\description{3D plot of a polygonal link}

\usage{
plotKnot3D(points3D, ends = c(), text = FALSE, showNC = FALSE, colors = list(), ...)
}

\arguments{
  \item{points3D}{an \eqn{N} x 3 matrix of the \eqn{x}, \eqn{y}, \eqn{z} coordinates of a polygonal link}
  \item{ends}{a vector of positive integers defining the separators of the polygonal link. Default empty (polygonal knot)}
  \item{text}{logical, if TRUE the numbering of the points is shown }
  \item{showNC}{logical, if TRUE the N-terminus and C-terminus of a protein are labeled in red}
  \item{colors}{a list of color vectors, one for each component. Each vector \eqn{i} can be of length 1, containing the color 
  to be used for the component \eqn{i} or of length equal to the number of points of the component \eqn{i}, thus 
  specifying the color to be used for each edge. If not supplied, single colors from 1 to \eqn{n} are used, where \eqn{n} is the number of link components}
  \item{\dots}{other parameters for \code{lines3d} or \code{spheres3d}}
}

\value{
Called for its effect.
}

\author{
Federico Comoglio, federico.comogli@bsse.ethz.ch
}

\note{
This is a low-level function.
}

\seealso{
\code{\link{plotDiagram}}
}

\examples{
##3D plot of the Hopf link

hopf <- matrix(c(0.000084, -1.667027, -0.000300,
    0.179585, 0.249735, 0.991541,
    -0.179478, 0.250355, -0.991211,
    0.000084, -1.667027, -0.000300,
    -0.991561, -0.250457, 0.179413,
    -0.000415, 1.666817, 0.000107,
    0.991784, -0.249435, -0.179541,
    -0.991561, -0.250457, 0.179413),
    ncol = 3, byrow = TRUE)
			
plotKnot3D(hopf, ends = 4, text = FALSE, showNC = FALSE, lwd = 5, radius = 0.05)

##Stevedore knot
data(Rolfsen.table, package = "Rknots")
stevedore <- Rolfsen.table$"6.1"
plotKnot3D(stevedore, ends = c(), text = FALSE, showNC = FALSE, 
    radius = 0.05, lwd = 5)

#The same plot, without specifying any parameter for the rgl primitive shapes 
# (the default sphere radius is 1).
plotKnot3D(stevedore, ends = c(), text = FALSE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{graphics}
% \keyword{ ~kwd2 }% __ONLY ONE__ keyword per line