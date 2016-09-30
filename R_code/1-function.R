#extract data of MD(24) and DC(11)

filter_dat <- function(file_path){
    tmp=read_sas(file_path)
    colnames(tmp)=tolower(colnames(tmp))
    tmp=tmp %>% filter(state == 24 | state == 11) 
    return (tmp)
}
