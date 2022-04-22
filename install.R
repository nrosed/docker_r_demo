#!/usr/bin/env Rscript

# get the CRAN snapshot timestamp
args <- commandArgs(trailingOnly=TRUE)
snapshot_timestamp <- args[1]

cran_vers_str = paste0("http://mran.revolutionanalytics.com/snapshot/", snapshot_timestamp)
options(repos = list(CRAN = cran_vers_str))

install.packages(c("data.table", "dplyr", "tidyr", "ggplot2"))