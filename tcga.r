##################################################
  library(DEGseq)
library( "org.Hs.eg.db" )

tumor <- system.file("extdata", "liver_tumor.txt", package="DEGseq")
normal <- system.file("extdata", "liver_normal.txt", package="DEGseq")

  geneExpMatrix1 <- readGeneExp(file=tumor, geneCol=1, valCol=c(2:408))
  geneExpMatrix2 <- readGeneExp(file=normal, geneCol=1, valCol=c(2:59))
  write.table(geneExpMatrix1[30:31,],row.names=FALSE)
  write.table(geneExpMatrix2[30:31,],row.names=FALSE)
  outputDir <- file.path("C:", "DEGexpExample")
   
  DEGexp(geneExpMatrix1=geneExpMatrix1, geneCol1=1, expCol1=c(2:408), groupLabel1="tumor",
         geneExpMatrix2=geneExpMatrix2, geneCol2=1, expCol2=c(2:59), groupLabel2="normal,
         method="LRT", outputDir=outputDir)
   cat("outputDir:", outputDir, "\n")
   
  