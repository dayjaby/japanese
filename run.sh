wget ftp://ftp.monash.edu.au/pub/nihongo/examples.utf.gz
gzip -d examples.utf.gz
basex sentences_indexed.xq
basex -"SET INTPARSE true; CREATE DB japanese_examples examples.xml"