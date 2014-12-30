\name{AlexanderBriggs}
\alias{AlexanderBriggs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Alexander-Briggs reduction of a polygonal knot or link
%%  ~~function to do ... ~~
}
\description{
Apply the Alexander-Briggs reduction to a polygonal knot or link. This method is based on 
the concept of elementary deformation, which consists in the replacement of two sides of a 
triangle with the third provided that the triangle is empty. From version 1.1 
a fast implementation for links is provided.

%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
AlexanderBriggs(points3D, ends = c())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{points3D}{an \eqn{N} x 3 matrix of the \eqn{x}, \eqn{y}, \eqn{z} coordinates of a polygonal link}
\item{ends}{a vector of positive integers defining the separators of the polygonal link}
}
\value{
A list of two slots:
  \item{points3D}{an \eqn{M} x 3 matrix of the \eqn{x}, \eqn{y}, \eqn{z} coordinates of the reduced structure, \eqn{M\leq N}}
  \item{ends}{if a non empty \code{ends} has been provided as an input, a vector of positive integers defining the separators of the reduced structure}
}
\references{
Reidemeister K (1926), Abh Math Sem Univ Hamburg 5: 24-32.

Alexander JW, Briggs GB (1926) On types of knotted curves. Ann of Math 28: 562-586.

%% ~put references to the literature/web site here ~
}
\author{
Federico Comoglio, federico.comoglio@bsse.ethz.ch

Maurizio Rinaldi, maurizio.rinaldi@pharm.unipmn.it
}
\note{
This is a low-level function.
}

\seealso{
\code{\link{msr}}
}

\examples{
#reducing a knot
k <- makeExampleKnot(k = TRUE)
AlexanderBriggs(points3D = k)

#reducing a link
k <- makeExampleKnot(k = FALSE)
AlexanderBriggs(points3D = k$points3D, ends = k$ends)
}

\keyword{structurereduction}
