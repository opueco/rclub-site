knitr::knit_hooks$set(showDetails = function(before, options, envir) {
  if (before) {
    return("<details><summary>答</summary>")
  } else {
    if (!options$doNotClose) return("</details>")
  }
})

knitr::opts_hooks$set(showDetails = function(options) {
  if(options$showDetails) {
    options$echo = FALSE
  }
  return(options)
})
