
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Travis-CI Build
Status](https://travis-ci.org/jjchern/saipe.svg?branch=master)](https://travis-ci.org/jjchern/saipe)

# About

See the [`saipeAPI` package](https://github.com/jjchern/saipeAPI) for
details.

# Installation

``` r
# install.packages("remotes")
remotes::install_github("jjchern/saipe@v0.0.3")
```

# Usage

``` r
library(tibble)
#> Warning: package 'tibble' was built under R version 3.4.4

saipe::saipe_us
#> # A tibble: 25 x 16
#>    name  abbr   year sum_lvl med_inc pov_cnt_0_17 pov_cnt_0_4
#>    <chr> <chr> <dbl> <chr>     <dbl>        <dbl>       <dbl>
#>  1 Unit… US     1989 010       28906     12589930     4083407
#>  2 Unit… US     1993 010       31241     15727492     5367476
#>  3 Unit… US     1995 010       34076     14665019     4816366
#>  4 Unit… US     1996 010       35492     14463480     4582977
#>  5 Unit… US     1997 010       37005     14113067     4223539
#>  6 Unit… US     1998 010       38885     13466544     4038584
#>  7 Unit… US     1999 010       40696     12280321     3594416
#>  8 Unit… US     2000 010       41990     11587118     3583098
#>  9 Unit… US     2001 010       42228     11732684     3575879
#> 10 Unit… US     2002 010       42409     12132645     3727193
#> # … with 15 more rows, and 9 more variables: pov_cnt_fam_5_17 <dbl>,
#> #   pov_cnt_all <dbl>, pov_rate_0_17 <dbl>, pov_rate_0_4 <dbl>,
#> #   pov_rate_all <dbl>, pov_univ_0_17 <dbl>, pov_univ_0_4 <dbl>,
#> #   pov_univ_fam_5_17 <dbl>, pov_univ_all <dbl>

saipe::saipe_state
#> # A tibble: 1,275 x 17
#>    name  abbr  statefip  year sum_lvl med_inc pov_cnt_0_17 pov_cnt_0_4
#>    <chr> <chr> <chr>    <dbl> <chr>     <dbl>        <dbl>       <dbl>
#>  1 Cali… CA    06        1989 040       33474      1652744      554750
#>  2 Colo… CO    08        1989 040       28368       153417       53891
#>  3 Conn… CT    09        1989 040       39548        83930       25847
#>  4 Dela… DE    10        1989 040       31606        22537        7231
#>  5 Dist… DC    11        1989 040       29322        27502        9062
#>  6 Flor… FL    12        1989 040       26589       595084      197001
#>  7 Geor… GA    13        1989 040       27317       368025      115929
#>  8 Hawa… HI    15        1989 040       35832        42764       16654
#>  9 Alab… AL    01        1989 040       22202       258656       75536
#> 10 Alas… AK    02        1989 040       33885        26590        9989
#> # … with 1,265 more rows, and 9 more variables: pov_cnt_fam_5_17 <dbl>,
#> #   pov_cnt_all <dbl>, pov_rate_0_17 <dbl>, pov_rate_0_4 <dbl>,
#> #   pov_rate_all <dbl>, pov_univ_0_17 <dbl>, pov_univ_0_4 <dbl>,
#> #   pov_univ_fam_5_17 <dbl>, pov_univ_all <dbl>

saipe::saipe_county
#> # A tibble: 78,543 x 18
#>    name  abbr  statefip countyfip  year sum_lvl med_inc pov_cnt_0_17
#>    <chr> <chr> <chr>    <chr>     <dbl> <chr>     <dbl>        <dbl>
#>  1 Crit… AR    05       05035      1989 050       18787         6097
#>  2 Cros… AR    05       05037      1989 050       19075         1871
#>  3 Dall… AR    05       05039      1989 050       18898          593
#>  4 Desh… AR    05       05041      1989 050       16801         2193
#>  5 Drew… AR    05       05043      1989 050       19481         1027
#>  6 Faul… AR    05       05045      1989 050       23952         1818
#>  7 Fran… AR    05       05047      1989 050       19594          793
#>  8 Fult… AR    05       05049      1989 050       15066          848
#>  9 Garl… AR    05       05051      1989 050       19689         3702
#> 10 Gran… AR    05       05053      1989 050       25298          542
#> # … with 78,533 more rows, and 10 more variables: pov_cnt_0_4 <chr>,
#> #   pov_cnt_fam_5_17 <dbl>, pov_cnt_all <dbl>, pov_rate_0_17 <dbl>,
#> #   pov_rate_0_4 <chr>, pov_rate_all <dbl>, pov_univ_0_17 <chr>,
#> #   pov_univ_0_4 <chr>, pov_univ_fam_5_17 <chr>, pov_univ_all <chr>
```
