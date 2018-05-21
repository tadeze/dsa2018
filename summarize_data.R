## Aggregate hourly data from 2016 - 2017 for 26 Kenyan locations. 

library(dplyr)
library(lubridate)
library(ggplot2)

dirpath <- "~/adams/kenyahackaton/kenyanstations/fiveminute2016-2017data/"
output_dir <- "~/adams/kenyahackaton/kenyanstations/hourly2016-2017/"

## Use only 2016- 2017 data and average hourly 
#ymd_hr <- function(datetime) return(format(as.POSIXct(datetime, format="%Y-%m-%d %H:%M"), format="%Y-%m-%d %H:00:00"))
ymd_hrl <- function(datetime) return(parse_date_time(paste(date(datetime),hour(datetime),"00:00",sep=":"),"y-m-d HMS"))


for(stn in list.files(dirpath)){
sd <-  read.csv(paste0(dirpath,stn))
sd$datetime <- parse_date_time(sd$date,'y-m-d HMS')
sd_hr <-  sd %>% 
  filter(year(datetime)>=2016 & year(datetime)<=2017) %>%
  group_by(station=station, date=ymd_hrl(datetime)) %>% 
  summarise(pr=max(pr),wg=mean(wg),ap=mean(ap), ws=mean(ws),ra=mean(ra),te=mean(te),rh=mean(rh))
write.table(sd_hr, file=paste0(output_dir,"hourly_",stn), sep=",", row.names=F, quote=F)

}