\name{Rknots-package}
\alias{Rknots-package}
\alias{Rknots}
\docType{package}
\title{
Rknots: topological characterization of knotted 3D structures with R
%%~~ package title ~~
}
\description{
The Rknots package provides functions for the topological analysis of 
either biological or synthetic knotted polymers, with a major focus on proteins.
%%~~ A concise (1-5 lines) description of the package ~~

}
\details{
\tabular{ll}{
Package: \tab Rknots\cr
Type: \tab Package\cr
Version: \tab 1.2.1\cr
Date: \tab 2013-06-26\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}
%%~~ An overview of how to use the package, including the most important ~~
The Rknots package contains functions for the topological analysis of polymers, with a major focus on proteins. 
Notice that Rknots depends on the package bio3d (it can be downloaded from http://mccammon.ucsd.edu/~bgrant/bio3d/) not available through CRAN. 
The package provides the following set of tools:

1)Functions to import 3D structures or fetch pdb file from the Protein Data Bank (PDB) are implemented with a set of utilities.

2)Structure reduction algorithms: the Alexander-Briggs reduction scheme for knots and links 
and the Minimal Structure Reduction (MSR) algorithm.

3)Polynomial computation: Alexander, Jones and HOMFLY polynomial via geometrical construction of the Conway's skein triple.
Multivariate Alexander polynomial of links. Linking number.

4)Graphical representation of knot and link diagrams. 3D knots and links representation.

5)Large set of utilities.

Credits are due to the bio3d package, to the google code project SymPy and to Rsympy. 

Rknots serves as a general purpose framework to identify knots in 3D structures and is not limited to proteins. 
We have therefore described part of the low-level functions to maximize their integration within other frameworks.
 
For any further details or feedback please feel free to contact us. Finally, we encourage external contributions to the package.


License: GPL-2

LazyLoad: yes
%%~~ functions ~~
}
\author{
Federico Comoglio and Maurizio Rinaldi

Maintainer: Federico Comoglio \email{federico.comoglio@bsse.ethz.ch}
%%~~ The author and/or maintainer of the package ~~
}
\references{
Comoglio F. and Rinaldi M. (2012) Rknots: topological analysis of knotted biopolymers with R, Bioinformatics 28 (10), 1400-1401

Comoglio F. and Rinaldi M. (2011) A Topological Framework for the Computation of the HOMFLY Polynomial and Its Application to Proteins 
PLoS ONE 6(4): e18693, doi:10.1371/journal.pone.0018693 
ArXiv:1104.3405
%%~~ Literature or other references for background information ~~
}
%%~~ Optionally other standard keywords, one per line, from file KEYWORDS in ~~
%%~~ the R documentation directory ~~
\keyword{package}