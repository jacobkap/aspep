setwd("data")
# https://www.census.gov/programs-surveys/apes/data/tables.html
years <- data.frame(year = 1992:2011,
                    smallyear = c(92:99, paste0(0, 0:9), 10:11))
years <- years[years$year != 1996, ]


for (i in 1:nrow(years)) {
  setwd("state/raw")
  # State
  download.file(paste0("https://www2.census.gov/programs-surveys/apes/tables/",
                       years$year[i],
                       "/annual-apes/",
                       years$smallyear[i],
                       "stall.xls"),
                destfile = paste0(years$smallyear[i],
                                  "stall.xls"),
                mode = "wb")
  setwd("..")
  setwd("..")

  if (years$year[i] > 1992) {
    setwd("local/raw")
  # Local
  download.file(paste0("https://www2.census.gov/programs-surveys/apes/tables/",
                       years$year[i],
                       "/annual-apes/",
                       years$smallyear[i],
                       "locall.xls"),
                destfile = paste0(years$smallyear[i],
                                  "locall.xls"),
                mode = "wb")
  setwd("..")
  setwd("..")
  

  setwd("state_and_local/raw")
  apes <- "/annual-apes/"
  if (years$year[i] == 2005) apes <- "/"
  # State and local
  download.file(paste0("https://www2.census.gov/programs-surveys/apes/tables/",
                       years$year[i],
                       apes,
                       years$smallyear[i],
                       "stlall.xls"),
                destfile = paste0(years$smallyear[i],
                                  "stlall.xls"),
                mode = "wb")
  setwd("..")
  setwd("..")
  }
  

}
