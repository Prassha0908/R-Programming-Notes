countdown_to_time <- function(target_time) {
  repeat {
    current_time <- Sys.time()
    target_datetime <- as.POSIXct(paste(Sys.Date(), target_time), format="%Y-%m-%d %I.%M%p")
    
    if (current_time > target_datetime) {
      target_datetime <- target_datetime + 86400  # add 24 hours
    }
    
    remaining_seconds <- as.numeric(difftime(target_datetime, current_time, units="secs"))
    
    if (remaining_seconds <= 0) {
      cat("\nTime's up!\n")
      break
    }
    
    mins <- remaining_seconds %/% 60
    secs <- remaining_seconds %% 60
  
    cat("\rTime remaining:", mins, "mins", secs, "secs")
    Sys.sleep(1)
  }
}


countdown_to_time("6.00PM")


