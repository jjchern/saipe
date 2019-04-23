
# install.packages("devtools")
# devtools::install_github("jjchern/saipeAPI@v0.0.3")
library(tidyverse)

# SAIPE variable labels ---------------------------------------------------

saipeAPI::saipe_vars %>%
        filter(str_detect(Concept, "Estimate|Geo")) %>%
        select(Name, Label) %>%
        print() -> saipe_vars

# US Poverty, Count and Rate Estimates ------------------------------------

saipeAPI::saipe_us(year = saipeAPI::saipe_years,
                   var = saipe_vars$Name) %>%
        print() -> saipe_us_raw

saipe_vars %>%
        mutate(Name = tolower(Name))

saipe_us_raw %>%
        docxtractr::mcga() %>%
        select(-county, -geoid, -us, -state) %>%
        select(name, abbr = stabrev, year = time,
               sum_lvl = sumlev,
               med_inc = saemhi_pt,
               pov_cnt_0_17      = saepov0_17_pt,
               pov_cnt_0_4       = saepov0_4_pt,
               pov_cnt_fam_5_17  = saepov5_17r_pt,
               pov_cnt_all       = saepovall_pt,
               pov_rate_0_17     = saepovrt0_17_pt,
               pov_rate_0_4      = saepovrt0_4_pt,
               pov_rate_all      = saepovrtall_pt,
               pov_univ_0_17     = saepovu_0_17,
               pov_univ_0_4      = saepovu_0_4,
               pov_univ_fam_5_17 = saepovu_5_17r,
               pov_univ_all      = saepovu_all,
               everything()) %>%
        print() -> saipe_us

usethis::use_data(saipe_us, overwrite = TRUE)

# State Poverty, Count and Rate Estimates ---------------------------------

saipeAPI::saipe_state(year = saipeAPI::saipe_years,
                      var = saipe_vars$Name) %>%
        print() -> saipe_state_raw

saipe_state_raw %>%
        docxtractr::mcga() %>%
        select(-county, -state_1, -geoid) %>%
        select(name,
               abbr = stabrev,
               statefip = state,
               year = time,
               sum_lvl = sumlev,
               med_inc = saemhi_pt,
               pov_cnt_0_17      = saepov0_17_pt,
               pov_cnt_0_4       = saepov0_4_pt,
               pov_cnt_fam_5_17  = saepov5_17r_pt,
               pov_cnt_all       = saepovall_pt,
               pov_rate_0_17     = saepovrt0_17_pt,
               pov_rate_0_4      = saepovrt0_4_pt,
               pov_rate_all      = saepovrtall_pt,
               pov_univ_0_17     = saepovu_0_17,
               pov_univ_0_4      = saepovu_0_4,
               pov_univ_fam_5_17 = saepovu_5_17r,
               pov_univ_all      = saepovu_all,
               everything()) %>%
        print() -> saipe_state

saipe_state %>% count(year) %>% print(n = 25)

usethis::use_data(saipe_state, overwrite = TRUE)

# County Poverty, Count and Rate Estimates --------------------------------

saipeAPI::saipe_county(year = saipeAPI::saipe_years,
                       var = saipe_vars$Name) %>%
        print() -> saipe_county_raw

saipe_county_raw %>%
        glimpse()

saipe_county_raw %>%
        docxtractr::mcga() %>%
        select(-county, -state_1, -county_1) %>%
        select(name,
               abbr = stabrev,
               statefip = state,
               countyfip = geoid,
               year = time,
               sum_lvl = sumlev,
               med_inc = saemhi_pt,
               pov_cnt_0_17      = saepov0_17_pt,
               pov_cnt_0_4       = saepov0_4_pt,
               pov_cnt_fam_5_17  = saepov5_17r_pt,
               pov_cnt_all       = saepovall_pt,
               pov_rate_0_17     = saepovrt0_17_pt,
               pov_rate_0_4      = saepovrt0_4_pt,
               pov_rate_all      = saepovrtall_pt,
               pov_univ_0_17     = saepovu_0_17,
               pov_univ_0_4      = saepovu_0_4,
               pov_univ_fam_5_17 = saepovu_5_17r,
               pov_univ_all      = saepovu_all,
               everything()) %>%
        print() -> saipe_county

usethis::use_data(saipe_county, overwrite = TRUE)

# Prepare variable labels -------------------------------------------------

saipe_vars %>%
        mutate(Name = tolower(Name)) %>%
        pivot_wider(names_from = Name, values_from = Label) %>%
        rename(abbr = stabrev,
               statefip = state,
               countyfip = geoid,
               sum_lvl = sumlev,
               med_inc = saemhi_pt,
               pov_cnt_0_17      = saepov0_17_pt,
               pov_cnt_0_4       = saepov0_4_pt,
               pov_cnt_fam_5_17  = saepov5_17r_pt,
               pov_cnt_all       = saepovall_pt,
               pov_rate_0_17     = saepovrt0_17_pt,
               pov_rate_0_4      = saepovrt0_4_pt,
               pov_rate_all      = saepovrtall_pt,
               pov_univ_0_17     = saepovu_0_17,
               pov_univ_0_4      = saepovu_0_4,
               pov_univ_fam_5_17 = saepovu_5_17r,
               pov_univ_all      = saepovu_all) %>%
        mutate(year = "time") %>%
        pivot_longer(cols = everything(),
                     names_to = "name", values_to = "label") %>%
        transmute(lbl = str_glue("- `{name}`: {label}")) %>%
        pull(lbl)
