
# install.packages("devtools")
# devtools::install_github("jjchern/saipeAPI")
library(dplyr, warn.conflicts = FALSE)

# SAIPE variable labels ---------------------------------------------------

saipe_vars = saipeAPI::saipe_vars %>% filter(Concept %>% stringr::str_detect("Estimate|Geo"))
devtools::use_data(saipe_vars, overwrite = TRUE)

# US Poverty, Count and Rate Estimates ------------------------------------

saipe_us = saipeAPI::saipe_us(year = saipeAPI::saipe_years, var = saipe_vars$Name)
devtools::use_data(saipe_us, overwrite = TRUE)

# State Poverty, Count and Rate Estimates ---------------------------------

saipe_state = saipeAPI::saipe_state(year = saipeAPI::saipe_years, var = saipe_vars$Name)
devtools::use_data(saipe_state, overwrite = TRUE)

# County Poverty, Count and Rate Estimates --------------------------------

saipe_county = saipeAPI::saipe_county(year = saipeAPI::saipe_years, var = saipe_vars$Name)
devtools::use_data(saipe_county, overwrite = TRUE)

