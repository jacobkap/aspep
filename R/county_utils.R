setwd("C:/Users/user/Dropbox/R_project/aspep/data/raw_datasets")
devtools::install_github("jacobkap/asciiSetupReader")
library(asciiSetupReader)
library(tidyverse)

get_data <- function(files, type) {
  final <- data.frame(stringsAsFactors = FALSE)
  for (file in files) {
    message(file)
    sps_file <- get_sps_files(file, type)
    temp <- spss_ascii_reader(file,
                              sps_file,
                              coerce_numeric = FALSE)
    names(temp) <- tolower(names(temp))
    temp <- temp[, !grepl("filler", names(temp))]
    temp$year <- get_sps_files(file, "year")
    final <- dplyr::bind_rows(final, temp)
  }
  return(final)
}



census_fips <- readLines("census_fips_codes.txt")
census_fips <- stringr::str_split_fixed(census_fips, ",", 5)
census_fips <- data.frame(census_fips, stringsAsFactors = FALSE)
census_fips$X5 <- NULL
names(census_fips) <- c("state_abb", "fips_state", "fips_county", "county_name")
census_fips$fips_state_county <- paste0(census_fips$fips_state,
                                        census_fips$fips_county)

data_files <- list.files(pattern = "empst|EMPST")
id_files   <- list.files(pattern = "empid|EMPID")

get_sps_files <- function(file, type) {
  year <- as.numeric(substr(file, 1, 2))
  if (year %in% 7:11) {
    id_sps   <- "individual_unit_id_2007_2011.sps"
    data_sps <- "individual_unit_data_2007_2011.sps"
    if (nchar(year) == 1) {
      year <- str_pad(year, string = "0", width = 2, side = "right")
    }
    year <- as.numeric(paste0(20, year))
  } else if (year %in% 12:16) {
    id_sps   <- "individual_unit_id_2012_2016.sps"
    data_sps <- "individual_unit_data_2012_2016.sps"
    if (nchar(year) == 1) {
      year <- str_pad(year, string = "0", width = 2, side = "right")
    }
    year <- as.numeric(paste0(20, year))
  } else if (year %in% c(92:99, 0:6)) {
    id_sps   <- "individual_unit_id_1992_2006.sps"
    data_sps <- "individual_unit_data_1992_2006.sps"
    if (year %in% 92:99) {
      if (nchar(year) == 1) {
        year <- str_pad(year, string = "0", width = 2, side = "right")
      }
      year <- as.numeric(paste0(19, year))
    } else if (year %in% 0:6) {
      if (nchar(year) == 1) {
        year <- str_pad(year, string = "0", width = 2, side = "right")
      }
      year <- as.numeric(paste0(20, year))
    }
  }
  if (type == "id") {
    return(id_sps)
  } else if (type == "data") {
    return(data_sps)
  } else if (type == "year") {
    return(year)
  }
}