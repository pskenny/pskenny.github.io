cd ..
stack clean
stack build
stack exec site clean
chcp 65001
stack exec site build