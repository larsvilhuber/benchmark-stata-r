library(data.table)
library(tidyr)
library(stringr) 
library(ggplot2) 
library(scales)
library(svglite)
library(here)
library(dplyr)

DT = fread(here::here("output", "resultR1e7.csv"))
DT2 = fread(here::here("output", "resultStata1e7.csv"))
setnames(DT, "result", "R")
DT[, Stata := DT2[["result"]]]

DT[, value := Stata / R]
DT[, language := "Stata"]
setDT(DT)

# read the output/cores.csv file to obtain the number of processors
cores = fread(here::here("output", "cores.csv"))
cores = pull(cores[1])

DT[, command := factor(command, levels=rev(unique(command)))]
image = ggplot(DT,aes(x=command,y=value, fill = "red", width=0.2)) + 
    geom_bar(position=position_dodge(width=0.2), stat="identity")+ 
    coord_flip() + 
    scale_fill_discrete(breaks=c("Stata","R")) + 
    ylab("Time spent in Stata (relative to time in R)") +  
    scale_y_log10(breaks = c(0.1, 1, 10, 100), labels = c("0.1", "1", "10", "100")) +
    # add caption as footnote below the plot
    labs(caption = paste0("Number of processors: ", cores))
ggsave(here::here("output", "1e7.svg"), image)
ggsave(here::here("output", "1e7.png"), image)

sessionInfo()
