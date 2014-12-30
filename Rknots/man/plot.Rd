\name{plot-methods}
\docType{methods}
\alias{plot,Knot-method}

\title{Plot the diagram of a Knot object.}

\description{
Plot method that produces the knot or link diagram for an object of class 'Knot'
}

\section{Methods}{
\describe{

\item{\code{signature(x = "Knot")}}{
%%  ~~describe this method here~~
}
}}

\seealso{
\code{\link{Knot-class}}
}


\author{
   Federico Comoglio, federico.comoglio@bsse.ethz.ch
}

\examples{
knot <- makeExampleKnot(k = TRUE)
knot <- newKnot(knot)
link <- makeExampleKnot(k = FALSE)
link <- newKnot(link$points3D, link$ends)

plot(knot)
plot(knot, lwd = 2.5) #to emphasize the overcrossings
plot(link)
plot(link, lwd = 2.5) #to emphasize the overcrossings
}   

\keyword{methods}

   