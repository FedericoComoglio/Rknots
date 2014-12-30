\name{intersectionMatrix}
\alias{intersectionMatrix}

\title{Compute the intersection matrix of a polygonal link}

\description{Compute the intersection matrix of a polygonal link. See details.}

\usage{
intersectionMatrix(points3D, ends = c())
}

\arguments{
  \item{points3D}{an \eqn{N} x 3 matrix of the \eqn{x}, \eqn{y}, \eqn{z} coordinates of a three-dimensional structure
}
  \item{ends}{a vector of positive integers defining the separators of the polygonal link
}
}

\details{
The entries of the intersection matrix are defined as follows.
Given two sets of edges \eqn{A} and \eqn{B} we can compute the intersection matrix \eqn{I=I(A,B)} by setting 
\deqn{
(I(A,B))_{i,j} = 0} 
if \eqn{A_i} and \eqn{B_j} do not intersect transversally.
%%
\deqn{
(I(A,B))_{i,j} = +1} 
if \eqn{A_i} lays over \eqn{B_j}.
%%
\deqn{
(I(A,B))_{i,j} = -1} 
if \eqn{A_i} lays under \eqn{B_j}.
Finally, if \eqn{A=B} we get the skew symmetric square matrix \eqn{I(A)}
}

\value{
An \eqn{N}-1 x \eqn{N}-1 matrix
}

\note{
This is a low-level function.
}

\references{
Comoglio F. and Rinaldi M. A Topological Framework for the Computation of the HOMFLY Polynomial and Its Application to Proteins (2011) 
PLoS ONE 6(4): e18693, doi:10.1371/journal.pone.0018693 
ArXiv:1104.3405
}

\author{
Federico Comoglio, federico.comoglio@bsse.ethz.ch
}

\note{
If \code{ends} is not null, the corresponding rows and columns of the intersection matrix are set to zero.
}

\examples{
##Compute the intersection matrix of a random structure of 20 points
points <- matrix(runif(60,-1,1), ncol = 3)

intersectionMatrix(points)

##Compute the intersection matrix of the trefoil knot
data(Rolfsen.table, package = "Rknots")
trefoil <- Rolfsen.table$"3.1"

intersectionMatrix(trefoil)
}

\keyword{utilities}

