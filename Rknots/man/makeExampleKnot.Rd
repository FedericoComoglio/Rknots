\name{makeExampleKnot}
\alias{makeExampleKnot}

\title{Randomly select a knot or a link from the local repository}
\description{This function returns a randomly selected knot or link from the Rolfsen table or from the link repository.
 It is used for the examples in some of the package help pages and can be used to test the different functions.}
\usage{
makeExampleKnot(k = TRUE)
}

\arguments{
	\item{k}{
		logical, if TRUE a knot is returned, otherwise it returns a link.
		}
}

\value{
	A matrix with the 3D coordinates of a knot if \code{k} is FALSE. A list with two slots: the 3D coordinates of a link and 
	a vector of separators if \code{k} is TRUE.	
}

\seealso{
\code{\link{Knot-class}}, \code{\link{newKnot}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{
#an example knot
knot <- makeExampleKnot(k = TRUE)

#an example link
link <- makeExampleKnot(k = FALSE)
}

\keyword{utilities}