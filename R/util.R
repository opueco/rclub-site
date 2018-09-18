counter <- function(start = 0) {
  count <- start
  .counter <- function() {
    count <<- count + 1
    return(count)
  }
  return(.counter)
}
