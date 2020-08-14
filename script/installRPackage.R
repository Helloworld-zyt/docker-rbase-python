#options(repos=structure(c(CRAN="http://mirrors.aliyun.com/CRAN/")))

install.packages(c("devtools"),dependencies=TRUE)
devtools::install_github(repo="hhoeflin/hdf5r")
devtools::install_github(repo = "mojaveazure/loomR", ref = "develop")
devtools::install_github("velocyto-team/velocyto.R")  

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install(c("S4Vectors", "SummarizedExperiment", "SingleCellExperiment", "MAST", "DESeq2", "monocle", "multtest", "pcaMethods"), ask=TRUE, update=TRUE )

install.packages(c("Seurat", "RcppGSL", "RcppZiggurat", "Rfast", "mutoss", "Rfast2", "metap"), dependencies=TRUE)

q()