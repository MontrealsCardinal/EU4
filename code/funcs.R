read_prov <- function(json_file){
  rl <- readLines(json_file)
  toread <- paste(rl[6:(length(rl)-1)], collapse = "")
  js <- fromJSON(paste("[", toread))
  provs <- js$properties
  return(provs)
}
