\name{rMatrix}
\alias{rMatrix}

\title{Rotation matrix along the \eqn{z} axis}

\description{Compute the rotation matrix by an angle \eqn{\theta} along the \eqn{z} axis}

\usage{
rMatrix(theta)
}

\arguments{
  \item{theta}{The rotation angle, in radians
}
}

\details{The counterclockwise 3 x 3 rotation matrix by an angle \eqn{\theta} along the \eqn{z} axis is defined as:
\deqn{
\left[ \begin{array}{ccc} \cos \theta & -\sin \theta & 0 \\
	 \sin \theta & \cos \theta & 0 \\ 
	 0 & 0 & 1 \\ \end{array} \right]
}
}

\value{
A 3 x 3 matrix
}

\references{
Weisstein, Eric W. "Rotation Matrix." From MathWorld--A Wolfram Web Resource, \url{http://mathworld.wolfram.com/RotationMatrix.html}
}

\author{
Federico Comoglio, federico.comoglio@bsse.ethz.ch
}

\note{
This is a low-level function.
}

\examples{
##Rotation matrix by theta = 45 degrees
rMatrix(pi/4)

##to rotate clockwise by 45 degrees
rMatrix(-pi/4)
}
\keyword{utilities}
