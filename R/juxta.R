juxta <-
function(chrname="chr22",...)
  {
  require(ERBS)
  data(HepG2)
  data(GM12878)
  require(ggbio)
  require(GenomicRanges)
  ap1 = autoplot(GenomicRanges::subset(HepG2,seqnames==chrname))
  ap2 = autoplot(GenomicRanges::subset(GM12878,seqnames==chrname))
  tracks(HepG2=ap1,Bcell=ap2,...) 
 }
