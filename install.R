options(repos=structure(c(CRAN="http://mirrors.aliyun.com/CRAN/")))
install.packages(c("devtools"),dependencies=TRUE)
install.packages(c("xml2", "tidyverse", "RcppArmadillo", "data.table", "Matrix", "plyr", "optparse", "bigsnpr", "bigreadr"), dependencies=TRUE)
devtools::install_github("tshmak/lassosum@v0.4.4")
