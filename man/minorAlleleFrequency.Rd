\name{minorAlleleFrequency}
\alias{minorAlleleFrequency}

\alias{filterSNPs}
\alias{mafHist}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function to calculate Minor Allele Frequency from SNPs
}
\description{
This package calculates minor allele frequencies
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
minorAlleleFrequency(SNPmat)

filterSNPs(SNPmat, minMAF = 0.05)
mafHist(SNPmat)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{SNPmat}{
%%     ~~Describe \code{SNPmat} here~~
}

\item{minMAF}{
This sets the minimum minor allele frequency, commonly 0.05
}

}
%%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
minorAlleleFrequency returns a vector of allele frequencies
filterSNPs returns a SNP matrix in the same format as SNPmat but with columns removed for SNPs with very rare alleles
mafHis draws a histogram plot of the MAF and does not return anything
}
%%\references{
%% ~put references to the literature/web site here ~
%}
\author{
Lucas Roberts
}
\note{
Most of this code was provided by Lindsay Clark
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
%%##---- Should be DIRECTLY executable !! ----
%%##-- ==>  Define data, use random,
%%##--	or do  help(data=index)  for the standard data sets.

%%## The function is currently defined as
SNPmat <- matrix(1:9, nrow = 3, ncol = 3)

function (SNPmat) 
{
    maf <- colMeans(SNPmat, na.rm = TRUE)/2
    common <- which(maf > 0.5)
    maf[common] <- 1 - maf[common]
    return(maf)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%%\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
%%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
