cd ..
stack clean
stack build
stack exec site clean
:: See https://jaspervdj.be/hakyll/tutorials/faq.html#hgetcontents-invalid-argument-or-commitbuffer-invalid-argument
chcp 65001
stack exec site build