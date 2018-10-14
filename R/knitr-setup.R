ohook <- knitr::knit_hooks$get("output")

knitr::knit_hooks$set(
  output = function(x, options) {
    x <- ohook(x, options)
    if (!is.null(options$summary)) {
      return(
        paste0("<details>\n<summary>", options$summary, "</summary>\n", x, "\n</details>")
      )
    }
    x
  }
)

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
