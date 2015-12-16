\name{centroidClosure}
\alias{centroidClosure}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Structure closure with the centroid method}

\description{
For being treated as a mathematical knot, the protein backbone needs to be closed.
This function implements the centroid method (also called CENTER), where the protein endpoints 
(C-terminus and N-terminus) are extended outside the sphere containing the protein backbone
 in the direction of the centroid of the structure.
}

\usage{
centroidClosure(points3D, w = 2)
}

\arguments{
  \item{points3D}{an \eqn{N} x 3 matrix of the \eqn{x}, \eqn{y}, \eqn{z} coordinates of a polygonal link
}
  \item{w}{given the radius \eqn{r} of the sphere 
  that contains the structure, the endpoints will be extended by \code{w} \eqn{r}.
}
}
\value{
an \eqn{(N+2)} x 3 matrix of the \eqn{x}, \eqn{y}, \eqn{z} coordinates of a polygonal link. 
The first and the last rows contain the coordinates of the extended endpoints.
%%  ~Describe the value returned
%%  If it is a LIST, use
%% ...
}
\references{
Lua RC, Grosberg AY (2006) Statistics of Knots, Geometry of Conformations, and Evolution of Proteins. 
PLoS Comput Biol 2(5): e45. doi:10.1371/journal.pcbi.0020045
%% ~put references to the literature/web site here ~
}
\author{
Federico Comoglio, federico.comoglio@bsse.ethz.ch
}

\note{
This is a low-level function.
}


\examples{
\dontrun{
## Import a PDB file from the web
protein <- makeExampleProtein()
closed <- centroidClosure(protein$A)
	
##Plot the result
plotKnot3D(closed, ends = c(), text = TRUE, showNC = TRUE, 
    radius = 0.01, lwd = 5)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{utilities}
\keyword{proteins}
% \keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
