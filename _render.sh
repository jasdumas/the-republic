#!/usr/bin/env Rscript

library(rmarkdown)

#rmds = list.files('.', '*.\\.Rmd')
#rmds = c('prep_layers.Rmd')
#rmds = c('test.Rmd')
rmds = c('web_scraping_sots_election_app.Rmd')

for (rmd in rmds){
  rmarkdown::render(rmd)
}