#devtools::install_github("hadley/devtools")

library(devtools)
library(knitr)
library(roxygen2)


setwd("~/uni/bacarena")
#load_all(pkg="~/uni/bacarena")
devtools::document()

# http://r-pkgs.had.co.nz/check.html

devtools::check() # includes document()

install_local(path="~/uni/bacarena", quick=TRUE, threads=2, quiet=F, force=T, upgrade=F)
#install_github(repo="euba/bacarena", quick=TRUE)


Rcpp::sourceCpp("src/duplicate.cpp")

build_win() # builds a package using win-builder

# add data to package
devtools::use_data()

# vignette
build_vignettes() #pdf is saved here: bacarena/inst/doc/BacArena-Introduction.pdf



run_examples()

test()
devtools::build()
check_doc()
check_man()


# 
devtools::install_github("hadley/lineprof")
library(lineprof)
l <- lineprof(simEnv_par(arena, time=1))


## old

setwd("~/uni/bacarena")
load_all()
check()


#
# 1) Build documentary
#
setwd("~/uni/bacarena")
#setwd("~/uni/test/testpkg/")
devtools::document()
#roxygen2::roxygenise() 
devtools::check_doc()
check()
run_examples()


#
# 2) Vignettes
#
build_vignettes()


setwd("~/uni")
document("bacarena")
check_doc("bacarena")


#
# 3) compiled code
#
devtools::use_rcpp()


#
# x) other stuff
# 


promptClass("Arena")
promptMethods("Arena")
showMethods("Arena")


build() #building R package archive

setwd("~/uni/bacarena")
load_all()
check()




build_win()


install_github("euba/BacArena", ref="rpkg")
install_local("~/BacArena")

# build vignette
library(rmarkdown)
devtools::use_vignette("BacArena-Introduction")
devtools::use_vignette("my-vignette")
#compile
#Cmd + Shift + K

#
# Rcpp stuff
#
library(Rcpp)
Rcpp.package.skeleton("BacArena") # new dummy package 
compileAttributes() # recreates package skeleton




roxygen2
document()

library(sybil)

ls("package:devtools")

makeNamespace()

library(BacArena)
library(rmarkdown)
