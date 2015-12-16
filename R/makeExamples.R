##Script generated in:
# 2011
# 9:55:08 PM
#by: 
# Author: Federico Comoglio @ D-BSSE, ETH Zurich
###############################################################################

#makeExampleKnot (k governs the output. k = TRUE returns a knot, FALSE returns a link.
makeExampleKnot <- function(k = TRUE) {
	if(k) {
		#Rolfsen.table <- NULL; rm(Rolfsen.table)
		#data(Rolfsen.table, package='Rknots')
		knot <- Rolfsen.table[[ sample(1 : length(Rolfsen.table), size = 1) ]]
		return( knot )
	}
	else {
		#link.table <- NULL; rm(link.table)
		#data(link.table, package='Rknots')
		link <- link.table[[ sample(1 : length(link.table), size = 1) ]]
		return( link )
	}
}

makeExampleProtein <- function() {
	protein <- loadProtein( system.file("extdata/2k0a.pdb", package="Rknots") )
	return(protein)
}
