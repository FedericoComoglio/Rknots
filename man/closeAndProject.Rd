\name{closeAndProject}
\alias{closeAndProject}

\title{Close the protein backbone and perform a Principal Component Analysis 
(requires an object of class 'Knot')}

\description{
Close the protein backbone and perform a Principal Component Analysis, This function
formally prepares a protein for the computation of an invariant. It requires the protein
structure as an object of class 'Knot'.
}

\usage{
	closeAndProject(protein, ...)
}

\arguments{
  \item{protein}{an object of class 'Knot'}

  \item{...}{additional parameters to be passed to lower level functions (e.g. \code{w} for 
controlling the extension of the endpoints in \code{centroidClosure}}
}

\value{
an object of class 'Knot' containing the processed structure.
}

\references{
Lua RC, Grosberg AY (2006) Statistics of Knots, Geometry of Conformations, and Evolution of Proteins. 
PLoS Comput Biol 2(5): e45. doi:10.1371/journal.pcbi.0020045
%% ~put references to the literature/web site here ~
}

\seealso{
\code{\link{Knot-class}}, 
\code{\link{centroidClosure}}
}

\author{
   Federico Comoglio, federico.comoglio@bsse.ethz.ch
}

\examples{
\dontrun{
## Loading from the file system
fn <- system.file("extdata", "1AJC_chainA.pdb", package="Rknots")
protein <- loadProtein(fn)
protein <- newKnot(protein$A)
protein.cp <- closeAndProject(protein)

# Plot the results
par(mfrow = c(1,2))        
plot(protein, lwd = 2)    
plot(protein.cp, lwd = 2)
}
}

\keyword{proteins}