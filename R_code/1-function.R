#extract data of MD(24) and DC(11) and add geo_id

filter_dat <- function(file_path){
    tmp=read_sas(file_path)
    colnames(tmp)=tolower(colnames(tmp))
    tmp=tmp %>% filter(state == 24 | state == 11) 
    tmp$geo_id=with(tmp,as.integer(paste0(state,formatC(county, width=3, flag="0"))))
    return (tmp)
}
