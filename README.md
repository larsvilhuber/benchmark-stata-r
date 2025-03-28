# Benchmarks

> This was forked. It has been adapted.

## Results

Original:

> This page compares the speed of R and Stata for typical data analysis. Instructions are runned on randomly generated datasets of with 10 millions observations. I try to use the fastest command available in each language. In particular, I use [gtools](https://github.com/mcaceresb/stata-gtools) in Stata. I use [data.table](https://github.com/Rdatatable/data.table), [fst](https://github.com/fstpackage/fst), and [fixest](https://github.com/lrberge/fixest/) in R.


<img class = "img-responsive"  src="/output/1e7.png" />


## Code

All the code below can be downloaded in the code folder in the repository.
The dataset is generated in R using the file [1-generate-datasets.r](code/1-generate-datasets.r).
The R code in the file [2-benchmark-r.r](code/2-benchmark-r.r):
The Stata code in the file [3-benchmark-stata.do](code/3-benchmark-stata.do):


## System Info 

The machine used for this benchmark has a AMD Ryzen 9 3900X 12-Core Processor (hyper-threading enabled) with a SanDisk Ultra II 480GB SSD disk.

### Stata

The Stata version is Stata 18.5 MP/32 set to use 24 cores, running natively on Linux. The Stata session info is:

````stata

StataNow/MP 18.5 for Unix (Linux 64-bit x86-64)
Revision 18 Dec 2024
Copyright 1985-2023 StataCorp LLC

Total usable memory: 31.26 GB
```

In particular, we used REGHDFE with the `parallel()` option from  <https://scorreia.com/software/reghdfe/>.

### R

The R session info is 

````R
R version 4.4.3 (2025-02-28)
Platform: x86_64-suse-linux-gnu
Running under: openSUSE Leap 15.6

Matrix products: default
BLAS:   /usr/lib64/R/lib/libRblas.so 
LAPACK: /usr/lib64/R/lib/libRlapack.so;  LAPACK version 3.12.0
````
