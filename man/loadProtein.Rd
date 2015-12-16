\name{loadProtein}
\alias{loadProtein}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Import a pdb file or fetch it from the Protein Data Bank. Check for structural gaps.
Build and return a backbone trace for each polypeptide chain.
%%  ~~function to do ... ~~
}
\description{
Import a pdb file either by fetching the Protein Data Bank or from the file system
and return the alpha-Carbon atoms coordinates.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
loadProtein(pdbID, join.gaps = FALSE, cutoff = 7, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pdbID}{a single element character vector containing the path to the file in the file
  system and the name of the PDB file to be read, or the four letter PDB identifier for 
  	 online file access (fetched from the PDB). For the latter, the \code{pdbID} is not case sensitive.
}
  \item{join.gaps}{logical (default FALSE). If TRUE, gaps are joined together with a straight
  line.
}
  \item{cutoff}{numeric (in Angstrom), distances between consecutive alpha-Carbon atoms
   greater than \code{cutoff} are considered as gaps.
}
  \item{...}{any other parameter for the \code{read.pdb} function of bio3d. See the manual for details.
}
}

\details{
If the selected PDB entry contains more than one polypeptide chain, all the available
chains are loaded or downloaded. The PDB atom field is then filtered individually to retain the coordinates of the 
protein C-alpha trace. If \code{join.gaps} is FALSE, additional chains (one for each split) will be produced and
labeled according to the following: if \eqn{C} is a chain and \eqn{C} is split in \eqn{j} subchains due to gaps,
the resulting subchains will be labeled with \eqn{C_1, \ldots, C_j}.

Notice that any other model or any three-dimensional structure can be 
directly loaded in R as an \eqn{N} x 3 matrix, where the columns represents the \eqn{x}, \eqn{y}, \eqn{z} coordinates.
To this purpose, please see the help pages of \code{read.table}, \code{read.delim}, \code{read.csv}, etc.
}

\value{
A list of length equal to the number of polypeptide chain (if gaps are not present or not considered) or greater
(if gaps are present), where each element contains an
\eqn{N} x 3 matrix with the \eqn{x}, \eqn{y}, \eqn{z} coordinates of the chain (or subchain) model.
}

\references{
Grant, Rodrigues, ElSawy, McCammon, Caves (2006)
\emph{Bio3D: An R package for the comparative analysis of protein structures.},
Bioinformatics 22, 2695-2696 
}

\author{
Federico Comoglio, federico.comoglio@bsse.ethz.ch
}

\note{
This function makes use of the \code{read.pdb} function in the \code{bio3d} package. 
See references for additional details and credits. 
}


\examples{
if(require(bio3d)) {
## Loading from the file system
fn <- system.file("extdata", "1AJC_chainA.pdb", package="Rknots")
protein <- loadProtein(fn)

## Fetching the PDB
protein<- loadProtein('2K0A')
#more than one chain (notice the split)
protein <- loadProtein('1GZ0')
str(protein)

#A protein with two subunits. The first one is split in two subchains.
protein <- loadProtein('1AJC', join.gaps = FALSE, cutoff = 7)
str(protein)
}
}

\keyword{utilities}
\keyword{proteins}
%%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line