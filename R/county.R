setwd("C:/Users/user/Dropbox/R_project/aspep/data/raw_datasets")
source('C:/Users/user/Dropbox/R_project/aspep/R/county_utils.R')


data                 <- get_data(data_files, "data")
data <- data %>%
  dplyr::select(-g_30_designation)
id                   <- get_data(id_files,   "id")
id <-
  id %>%
  dplyr::select("state_code",
                "type_of_government_code",
                "county_code",
                "unit_identification_number",
                "supplement_code",
                "sub_code",
                "name_of_government_political_description",
                "census_region_code",
                "county_name",
                "fips_state",
                "fips_county") %>%
  dplyr::distinct()

id                   <- left_join(id, census_fips, by = "fips_state", "fips_county")
aspep                <- left_join(data, id)
