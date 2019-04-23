
#' @title US Poverty Count and Rate Estimates
#' @description Use `saipe::saipe_us`.
#' @format A data frame with the following variables:
#' - `county`: County FIPS Code
#' - `countyfip`: State+County FIPS Code
#' - `name`: State or County Name
#' - `med_inc`: Median Household Income Estimate
#' - `pov_cnt_0_17`: Ages 0-17 in Poverty, Count Estimate
#' - `pov_cnt_0_4`: Ages 0-4 in Poverty, Count Estimate
#' - `pov_cnt_fam_5_17`: Ages 5-17 in Families in Poverty, Count Estimate
#' - `pov_cnt_all`: All ages in Poverty, Count Estimate
#' - `pov_rate_0_17`: Ages 0-17 in Poverty, Rate Estimate
#' - `pov_rate_0_4`: Ages 0-4 in Poverty, Rate Estimate
#' - `pov_rate_all`: All ages in Poverty, Rate Estimate
#' - `pov_univ_0_17`: Ages 0-17 in Poverty Universe
#' - `pov_univ_0_4`: Ages 0-4 in Poverty Universe
#' - `pov_univ_fam_5_17`: Ages 5-17r in Poverty Universe
#' - `pov_univ_all`: All Ages in Poverty Universe
#' - `abbr`: Two-letter State Postal abbreviation
#' - `statefip`: FIPS State Code
#' - `sum_lvl`: Summary Level
#' - `year`: time
"saipe_us"

#' @title State-Level Poverty Count and Rate Estimates
#' @description Use `saipe::saipe_state`.
#' @format A data frame with the following variables:
#' - `county`: County FIPS Code
#' - `countyfip`: State+County FIPS Code
#' - `name`: State or County Name
#' - `med_inc`: Median Household Income Estimate
#' - `pov_cnt_0_17`: Ages 0-17 in Poverty, Count Estimate
#' - `pov_cnt_0_4`: Ages 0-4 in Poverty, Count Estimate
#' - `pov_cnt_fam_5_17`: Ages 5-17 in Families in Poverty, Count Estimate
#' - `pov_cnt_all`: All ages in Poverty, Count Estimate
#' - `pov_rate_0_17`: Ages 0-17 in Poverty, Rate Estimate
#' - `pov_rate_0_4`: Ages 0-4 in Poverty, Rate Estimate
#' - `pov_rate_all`: All ages in Poverty, Rate Estimate
#' - `pov_univ_0_17`: Ages 0-17 in Poverty Universe
#' - `pov_univ_0_4`: Ages 0-4 in Poverty Universe
#' - `pov_univ_fam_5_17`: Ages 5-17r in Poverty Universe
#' - `pov_univ_all`: All Ages in Poverty Universe
#' - `abbr`: Two-letter State Postal abbreviation
#' - `statefip`: FIPS State Code
#' - `sum_lvl`: Summary Level
#' - `year`: time
"saipe_state"

#' @title County-Level Poverty Count and Rate Estimates
#' @description Use `saipe::saipe_county`.
#' @format A data frame with the following variables:
#' - `county`: County FIPS Code
#' - `countyfip`: State+County FIPS Code
#' - `name`: State or County Name
#' - `med_inc`: Median Household Income Estimate
#' - `pov_cnt_0_17`: Ages 0-17 in Poverty, Count Estimate
#' - `pov_cnt_0_4`: Ages 0-4 in Poverty, Count Estimate
#' - `pov_cnt_fam_5_17`: Ages 5-17 in Families in Poverty, Count Estimate
#' - `pov_cnt_all`: All ages in Poverty, Count Estimate
#' - `pov_rate_0_17`: Ages 0-17 in Poverty, Rate Estimate
#' - `pov_rate_0_4`: Ages 0-4 in Poverty, Rate Estimate
#' - `pov_rate_all`: All ages in Poverty, Rate Estimate
#' - `pov_univ_0_17`: Ages 0-17 in Poverty Universe
#' - `pov_univ_0_4`: Ages 0-4 in Poverty Universe
#' - `pov_univ_fam_5_17`: Ages 5-17r in Poverty Universe
#' - `pov_univ_all`: All Ages in Poverty Universe
#' - `abbr`: Two-letter State Postal abbreviation
#' - `statefip`: FIPS State Code
#' - `sum_lvl`: Summary Level
#' - `year`: time
"saipe_county"
