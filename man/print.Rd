\name{print-methods}
\docType{methods}
\alias{print,Knot-method}

\title{print the content of the slots of a Knot object.}

\description{
Print method for an object of class 'Knot'
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
print(knot)

link <- makeExampleKnot(k = FALSE)
link <- newKnot(link$points3D, link$ends)
print(link)
}   

\keyword{methods}

   