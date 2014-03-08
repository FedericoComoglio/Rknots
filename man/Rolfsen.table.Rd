\name{Rolfsen.table}
\docType{data}
\alias{Rolfsen.table}
\alias{Rolfsen.table.ms}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Knots (up to 10 crossings) three dimensional coordinates, enumerated accordingly to Rolfsen. 
%%  ~~function to do ... ~~
}
\description{
	This data set contains the three dimensional coordinates of any knot with a number o crossing
	less or equal to 10. The knots are labeled according to the Rolfsen's table of knots (see references). 

	The knot minimal sticks representation for each knot is provided in the data set 
	\code{Rolfsen.table.ms}.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
data(Rolfsen.table)
Rolfsen.table
Rolfsen.table.ms
}
\format{
A list of 250 matrices (N x 3)
}

\references{
	The Knot Server, \url{http://www.colab.sfu.ca/KnotPlot/KnotServer}
	
	The COLAB SFU website, \url{http://www.colab.sfu.ca}
	
	The Rolfsen Knot Table on Knot Atlas, \url{http://www.math.toronto.edu/~drorbn/KAtlas/Knots}
%% ~put references to the literature/web site here ~
}
\note{
%%  ~~further notes~~
	A single knot entry can be accessed by indexing the list with the corresponding knot name.
	
	\code{names(Rolfsen.table)} returns the available knot names. 
	For example, the minimal stickies representation of the trefoil knot 
	can be accessed by \code{Rolfsen.table.ms$"3.1"}.
}

\keyword{datasets}