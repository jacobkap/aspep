library(readr)
library(dplyr)
library(stringr)
library(xlsx)
library(memisc)

clean_files("aspep_local") 
clean_files("aspep_state")
clean_files("aspep_state_and_local")

merge_files("local") 
merge_files("aspep_state")
merge_files("aspep_state_and_local")

merge_files <- function(folder) {
  setwd("C:/Users/user/Dropbox/R_project/aspep")
  setwd(paste0("data/", folder, "/clean"))
  
  files <- list.files()
  final <- data.frame()
  for (file in files) {
    temp <- suppressMessages(readr::read_csv(file))
    final <- bind_rows(final, temp)
  }
  final <- final[order(final$year), ]
  col_names <- names(final)
  col_names <- col_names[!col_names %in% c("state", "government_function",
                                           "year")]
  final <- final[, c("state", "government_function", "year", col_names)]
  final$part_time_pay <- as.numeric(final$part_time_pay)
  final <- as.data.frame(final)
  setwd("..")
  readr::write_csv(final, paste0("aspep_1992_2016_", folder, ".csv"))
  Write(codebook(final),
        file = paste0("aspep_1992_2016_", folder, "_codebook.txt"))
  
}

clean_files <- function(folder) {
  setwd("C:/Users/user/Dropbox/R_project/aspep")
  setwd(paste0("data/", folder, "/raw"))
  files <- list.files()
  
  years <- data.frame(original = c(92:99, "00", "01", "02", "03", "04", "05",
                                   "06", "07", "08", "09", 10:11),
                      new      = 1992:2011)
  
  for (file_name in files) {
    if (file_name %in% c("94stall.xls", "95stall.xls")) next
    message(file_name)
    # Gets year of file from the file name
    if (grepl(".xls", file_name)) {
      file_year <- substr(file_name, 1, 2)
      year <- years$new[years$original %in% file_year]
      file <- xlsx::read.xlsx(file_name, 1)
      file <- file[!grepl("^STATE GOVERNMENT EMPLOYMENT AND PAYROLL", file[,1]), ]
      file[,1 ] <- gsub("Total: *All States", "UNITED STATES", file[,1 ],
                        ignore.case = TRUE)
      file[,2 ] <- gsub("Total .*", "TOTAL", file[,2 ],
                        ignore.case = TRUE)
      col_values <- do.call(paste, file)
      col_values <- trimws(col_values)
      
      
      # Finds which rows are actually header row (column names) and then
      # merges them together into a single row to be used as the column
      # names
      start <- grep("^(NA )*?Full|^(NA )*?Coefficient", col_values)[1]
      end <- (grep("^US |^United|ALABAMA", col_values, ignore.case = TRUE)[1]) - 1
      col_names <- data.frame(t(file[start:end, ]))
      col_names <- do.call(paste, c(col_names, sep = "_"))
      col_names <- gsub("NA_|_NA", "", col_names)
      
      if (grepl("Abbrev. Govern", col_names)[1]) {
        col_names[2] <- "Government_Function"
        col_names[1] <- gsub("\\..*", "", col_names[1])
      }
      # Removes header rows
      file <- file[(end + 1):nrow(file), ]
      names(file) <- col_names
      file$year <- year
    } else {
      file <- suppressMessages(readr::read_csv(file_name, skip = 1))
    }
    
    
    names(file) <- tolower(names(file))
    names(file) <- stringr::str_replace_all(names(file), col_name_fix)
    names(file) <- gsub("variation$", "variation_as_percent", names(file))
    
    file <- file[, !grepl("^x|^id|geo|government_employees_function", names(file))]
    
    for (i in 1:ncol(file)) {
      if (grepl("^coefficient", names(file)[i])) {
        names(file)[i] <- paste(names(file)[i - 1], names(file)[i], sep = "_")
      }
    }
    names(file) <- gsub("\\.[0-9]*$", "", names(file))
    
    file$government_function <- tolower(file$government_function)
    file$government_function <- trimws(file$government_function)
    file$government_function <- stringr::str_replace_all(file$government_function,
                                                         job_categories)
    
    # Changes state name to state abb.
    states <- data.frame(state.name, state.abb)
    states <- rbind(states, data.frame(state.name = c("United States",
                                                      "District of Columbia",
                                                      "Pennsylvannia"),
                                       state.abb  = c("US", "DC", "PA")))
    states$state.name <- tolower(states$state.name)
    if (any((grepl("Alabama", file$state, ignore.case = TRUE))))  {
      file$state <- tolower(file$state)
      file$state <- states$state.abb[match(file$state, states$state.name)]
    }
    
    file <- file[!is.na(file$state), ]
    file <- file[, !grepl("^NA", names(file), ignore.case = TRUE)]
    
    setwd("..")
    setwd("clean")
    file_name = gsub("\\.xls", ".csv", file_name)
    readr::write_csv(file, file_name)
    setwd("..")
    setwd("raw")
  }
}

col_name_fix <- c("^function"                    = "government_function",
                  "\\s|\\(|\\)|-|\\."            = "_",
                  "_+"                           = "_",
                  "^_|_$"                        = "",
                  "%"                            = "as_percent",
                  "variation_([0-9])"            = "variation_percent_\\1",
                  "payroll"                      = "pay",
                  "employment|employent"         = "employees",
                  "_whole_dollars"               = "",
                  "geographic_area_name|state.*" = "state",
                  "pay_for_full_time_employees"  = "full_time_pay",
                  "pay_for_part_time_employees"  = "part_time_pay",
                  "meaning_of_government_employees_function" = "government_function",
                  "_paid"                        = "",
                  "variation_percent"            = "variation_as_percent")



job_categories <- c(
  "\\..*" = "",
  "-" =  " - ",
  " +" = " ",
  "&" = "and",
  "^correction$"                           =          "corrections",
  "^elem and sec instructional$"            = "education - elementary and secondary instructional" ,
  "^elem and sec instructional employees$"  = "education - elementary and secondary instructional",
  "^elem and sec other employees$" = "education - elementary and secondary other",
  "^elem and sec school - other$" = "education - elementary and secondary other",
  "^elem and sec school instruc$" = "education - elementary and secondary instructional",
  "^elem and sec school instruction$" = "education - elementary and secondary instructional",
  "^elem and secondary - other$" = "education - elementary and secondary other",
  "^elemandsec instruct$" = "education - elementary and secondary instructional",
  "^elemandsec other - tot$" = "education - elementary and secondary total",
  "^elementary and secondary education total$" = "education - elementary and secondary total",
  "^elem and sec - other$"   = "education - elementary and secondary other",
  "^higher ed - other$"                    = "education - higher education other",
  "^higher ed instruct$"                   = "education - higher education instructional",
  "^higher ed instructional$"              = "education - higher education instructional",
  "^higher ed instructional employees$"    = "education - higher education instructional",
  "^higher ed other$"                      = "education - higher education other",
  "^higher ed other employees$"            = "education - higher education other",
  "^higher education - instruc$"           = "education - higher education instructional",
  "^higher education - instruction$"       = "education - higher education instructional",
  "^higher education - other$"             = "education - higher education other",
  "^higher education total$"               = "education - higher education total",
  "^other ed - state$"                     = "education - other",
  "^other education$"                      = "education - other",
  "^police - arrest$"                      = "police protection - officers",
  "^police - other$"                       = "police protection - other",
  "^police officers only$"                 = "police protection - officers",
  "^other police employees$"               = "police protection - other",
  "^police protection - persons with power of arrest$"  = "police protection - officers",
  "^police with power of arrest$"          = "police protection - officers",
  "^persons with power of arrest$"          = "police protection - officers",
  "^fire - other$"                         = "fire protection - other",
  "^firefighters$"                         = "fire protection - firefighters",
  "^firefighters only$"                    = "fire protection - firefighters",
  "^other fire employees$"                 = "fire protection - other",
  "mgmt"                                   = "management",
  "hwys"                                   = "highways",
  "^water supply$"                           = "water transport and terminals",
  "^water transport$"                        = "water transport and terminals",
  "^water transport and canals$"             = "water transport and terminals",
  "^water transport/terminals$"              = "water transport and terminals",
  "^soc insur admin$"                        = "social insurance administration",
  "^social insurance admin$"                 = "social insurance administration",
  "^housing and comm dev$"                   = "housing and community development",
  "^housing and community dev$"              = "housing and community development",
  "^housing and community developmen$"       = "housing and community development",
  "^other$"                                  = "fire protection - other",
  "all other"                                =  "other",
  "^other government admin$"                 = "other government administration",
  "total - all government employment functions" = "total",
  "state liquor stores"                      = "liquor stores",
  "judicial - legal"                         = "judicial and legal",
  "admin$"                                   = "administration",
  "central administration"                   = "other government administration",
  "local libraries"                          = "libraries",
  "airports"                                 = "air transportation"
)

