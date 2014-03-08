\name{plotDiagram}
\alias{plotDiagram}

\title{Plot a knot or a link diagram}

\description{Plot a knot or a link diagram, along with component orientation.}

\usage{
plotDiagram(points3D, ends, pca = FALSE, size = 1, colors = c(), return.vars = FALSE, ...) 
}

\arguments{
  \item{points3D}{an \eqn{N} x 3 matrix of the \eqn{x}, \eqn{y}, \eqn{z} coordinates of a polygonal link}
  \item{ends}{a vector of positive integers defining the separators of the polygonal link}
  \item{pca}{logical, if TRUE a Principal Component Analysis is applied to rotate the points. Generally,
  	results in a diagram simpler to be interpreted. This is especially true for large structures.}
  \item{size}{a scaling factor \eqn{s} of the plot region to be used for the plot. Default 1.
  The plot region within the active plot window is defined by \deqn{\frac{min(\Delta X, \Delta Y)}{s}}. 
  Values of \eqn{s > 1} reduce the plot region.}
  \item{colors}{a vector of colors, one for each component. If not supplied, integers from 1 to \eqn{n} are used, where
  \eqn{n} is the number of link components}
  \item{return.vars}{logical, if TRUE returns the extended structure described in details.}
  \item{\dots}{other graphical parameters for \code{plot}. }
}

\details{
Internally,this function localizes the crossings and insert auxiliary points in proximity of each undercross. 
The resulting extended structure can be accessed using \code{return.vars=TRUE}. 
The use of the parameter \code{lwd} is recommended in order to increase the line width of the overcrossings. 
This can be particularly useful when large structures are represented. See the examples below. 
}

\value{
Called for its effect. If \code{return.vars} is TRUE, it returns a list with the following elements
\item{points3D}{an (\eqn{N+2k}) x 3 matrix of the \eqn{x}, \eqn{y}, \eqn{z} coordinates of the extended polygonal link,
where \eqn{k} is the number of crossings}
\item{ends}{a vector of positive integers defining the separators of the extended polygonal link}
\item{undercross}{a vector of positive integers defining the row in \code{points3D} 
containing the coordinates of the undercrossings}
\item{overcross}{a vector of positive integers defining the row in \code{points3D} 
containing the coordinates of the overcrossings}
\item{component}{a vector of positive integers of length \eqn{N+2k} where each entry \eqn{i} 
corresponds to the component the \eqn{i}-th row of \code{points3D}.}
}

\references{
Weisstein, Eric W. "Knot diagram." From MathWorld--A Wolfram Web Resource, \url{http://mathworld.wolfram.com/KnotDiagram.html}
}

\author{
Maurizio Rinaldi, maurizio.rinaldi@pharm.unipmn.it
Federico Comoglio, federico.comoglio@bsse.ethz.ch
}

\note{
This is a low-level function.
}

\seealso{
\code{\link{plotKnot3D}}
}

\examples{
##Represent 12 randomly selected link diagrams
par(mfrow = c(3,4))

for(i in 1 : 12) {
	link <- makeExampleKnot( k = FALSE )
	link <- AlexanderBriggs(link$points3D, link$ends)
	plotDiagram(link$points3D, link$ends, main = i, lwd = 1.5)
}
}

\keyword{graphics}

