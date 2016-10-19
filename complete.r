#setwd("D:\\Users\\msboon\\Desktop\\For Data science coursera\\Intro to R\\rprog%2Fdata%2Fspecdata\\specdata")
#directory <- getwd();
complete <- function(directory, id=1:332){
  output_nobs <- matrix(data=NA, nrow = length(id), ncol = 2)
  colnames(output_nobs) <- c("id", "nobs")
  for(i in 1:length(id)){
    file_directory <- paste(c(directory,"/",sprintf("%03d",id[i]),".csv"),collapse="")
    load_file <- read.csv(file_directory, header=TRUE)
    output_nobs[i,] <- c(id[i],nrow(na.omit(load_file)))
  }
  return(output_nobs)
}