\name{juxta}
\alias{juxta}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Genomic vizualization for epigenomics tracks
}
\description{
Genomic vizualization for epigenomics tracks
}
\usage{
juxta(chrname = "chr22", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{chrname}{
character string specifing the chromosome of interest
}
  \item{\dots}{
Any additional arguments
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Mohammed Abdallah
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (chrname = "chr22", ...) 
{
    require(ERBS)
    data(HepG2)
    data(GM12878)
    require(ggbio)
    require(GenomicRanges)
    ap1 = autoplot(GenomicRanges::subset(HepG2, seqnames == chrname))
    ap2 = autoplot(GenomicRanges::subset(GM12878, seqnames == 
        chrname))
    tracks(HepG2 = ap1, Bcell = ap2, ...)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
