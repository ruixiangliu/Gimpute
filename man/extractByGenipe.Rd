% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extend2genipe.R
\name{extractByGenipe}
\alias{extractByGenipe}
\title{Extract imputed markers using Genipe}
\usage{
extractByGenipe(inputImpute2, inputMAP, outputPrefix, format, prob)
}
\arguments{
\item{inputImpute2}{the output from IMPUTE2.}

\item{inputMAP}{the output PLINK MAP file from Genipe, which will be used 
for generating markers in a text file (only one column without column name).}

\item{outputPrefix}{the prefix of the output files. [impute2_extractor]}

\item{format}{the output format. Can specify either "impute2" for 
probabilities (same as impute2 format, i.e. 3 values per sample), "dosage" 
for dosage values (one value between 0 and 2 by sample), 
 "calls" for hard calls, or "bed" for Plink binary format (with hard calls). 
[impute2]}

\item{prob}{the probability threshold used when creating a file 
in the dosage or call format. [0.9]}
}
\value{
The extracted imputed files using genipe.
}
\description{
Extract imputed markers located in a specific genomic region using Genipe. 
Note that, 1.) 'bed' PLINK binary format is specifically used for the 
output format.
2.) The markers of the whole chromosome are extracted together. 
For the filtering of maf and info will be done during post imputation.
}
\references{
Lemieux Perreault, L. P., et al. (2016). genipe: an automated 
genome-wide imputation pipeline with automatic reporting and statistical 
tools. Bioinformatics, 32(23), 3661-3663.
}
\author{
Junfang Chen
}
