#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
XJtreemap <- function(data, width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(
    data=data
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'XJtreemap',
    x,
    width = width,
    height = height,
    package = 'XuJIngd3plus',
    elementId = elementId
  )
}

#' Shiny bindings for XJtreemap
#'
#' Output and render functions for using XJtreemap within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a XJtreemap
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name XJtreemap-shiny
#'
#' @export
XJtreemapOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'XJtreemap', width, height, package = 'XuJIngd3plus')
}

#' @rdname XJtreemap-shiny
#' @export
renderXJtreemap <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, XJtreemapOutput, env, quoted = TRUE)
}
