<!-- README.md is generated from README.Rmd. Please edit that file -->
This is a practice package for [STAT 545](http://stat545-ubc.github.io).

This is just the demo Jenny is posting for students to consult / start with for their homework. Adrian Jones forked the package and added the function factor\_mush, a function that combines certain factor levels into one level.

Here's how to use the `foofactors` package.

``` r
#install_github("STAT545/foofactors")
library(foofactors)
fbind(iris$Species[c(1, 51, 101)], PlantGrowth$group[c(1, 11, 21)])
#> [1] setosa     versicolor virginica  ctrl       trt1       trt2      
#> Levels: ctrl setosa trt1 trt2 versicolor virginica
freq_out(iris$Species)
#> Source: local data frame [3 x 2]
#> 
#>            x     n
#>       (fctr) (int)
#> 1     setosa    50
#> 2 versicolor    50
#> 3  virginica    50

#Here is factor_mush in use
test <- as.factor(c("a", "b", "c","c", "b", "a", "a1", "b1", "c1"))
factor_mush(test, c("a", "c"), "ac")
#> [1] ac b  ac ac b  ac a1 b1 c1
#> Levels: ac a1 b b1 c1
```
