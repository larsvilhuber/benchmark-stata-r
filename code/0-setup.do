ssc install gtools
ssc install fastreshape
//ssc install reghdfe
ssc install autorename
//ssc install ftools
* Install ftools (remove program if it existed previously)
cap ado uninstall ftools
net install ftools, from("https://raw.githubusercontent.com/sergiocorreia/ftools/master/src/")

* Install reghdfe 6.x
cap ado uninstall reghdfe
net install reghdfe, from("https://raw.githubusercontent.com/sergiocorreia/reghdfe/master/src/")

* Install parallel, if using the parallel() option; don't install from SSC
cap ado uninstall parallel
net install parallel, from(https://raw.github.com/gvegayon/parallel/stable/) replace
mata mata mlib index
