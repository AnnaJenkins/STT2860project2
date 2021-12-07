# reads two datasets from the raw data file streamingcontent.xlsx
# writes the datasets to individual .rds files and an .Rdata file
# original data is in the raw folder, new in the processed folder


# view the names of the worksheets that are in streamingcontent.xlsx
library(readxl)
excel_sheets("~/Git_repositories/STT2860project2/dataraw/streamingcontent.xlsx")


# read in the first sheet of streamingcontent.xlsx and name it dplus

dplus <- read_excel("~/Git_repositories/STT2860project2/dataraw/streamingcontent.xlsx", sheet = "disneyplus")


# read in the second sheet of streamingcontent.xlsx and name it strmtv

strmtv <- read_excel("~/Git_repositories/STT2860project2/dataraw/streamingcontent.xlsx", sheet = "tvshows")


# write the datasets to two .rds files named dplus.rds and strmtv.rds

dplus_rds <- saveRDS(dplus, "~/Git_repositories/STT2860project2/dataprocessed/dplus.rds")

strmtv_rds <- saveRDS(strmtv, "~/Git_repositories/STT2860project2/dataprocessed/strmtv.rds")

# write the datasets to an .Rdata file called streamingcontent.Rdata

save(dplus, strmtv, file = "~/Git_repositories/STT2860project2/dataprocessed/streamingcontent.Rdata")
