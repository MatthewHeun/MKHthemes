


#' Set a pleasing theme for graphs.
#'
#' This function provides a graphical style that includes
#' \itemize{
#'   \item gray axes,
#'   \item gray tic marks,
#'   \item inward-pointing tic marks,
#'   \item no grid lines,
#'   \item and white plot background.#'
#' }
#'
#' @param base_size The base font size for text elements. Default is `12`.
#' @param base_family The base font family. Default is an empty string (`""`).
#' @param base_theme The base theme for ggplot2 graphics. Default is `theme_bw`.
#' @param label_colour The colour for labels. Default is "gray50".
#'
#' @importFrom ggplot2 %+replace%
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' DF <- data.frame(x = seq(1, 10), y = seq(11,20))
#' ggplot(data = DF, mapping = aes(x = x, y = y)) +
#'   geom_point() +
#'   xy_theme()
xy_theme <- function(base_size = 12, base_family = "", base_theme = ggplot2::theme_bw, label_colour = "gray50") {
  # See https://github.com/infotroph/ggplot-ticks if we want to mirror ticks on top and right.
  base_theme(base_size = base_size, base_family = base_family) %+replace%
    ggplot2::theme(# panel.border = element_blank(),
      # Change border to gray
      panel.border = ggplot2::element_rect(fill = NA, color = label_colour, linewidth = 0.5, linetype = "solid"),
      panel.grid.major = ggplot2::element_blank(), # No grid lines
      panel.grid.minor = ggplot2::element_blank(), # No grid lines
      plot.background = ggplot2::element_blank(),
      strip.text = ggplot2::element_text(colour = label_colour, size = 0.8 * base_size),
      strip.background = ggplot2::element_rect(fill = NA, colour = NA),
      legend.title = ggplot2::element_text(colour = label_colour),
      legend.background = ggplot2::element_rect(fill = NA, colour = NA),
      legend.key = ggplot2::element_rect(fill = NA, colour = NA),
      legend.text = ggplot2::element_text(colour = label_colour),
      axis.text = ggplot2::element_text(colour = label_colour, size = 0.8 * base_size),
      axis.ticks = ggplot2::element_line(colour = label_colour, linewidth = 0.2), # Sets thickness of ticks
      axis.title = ggplot2::element_text(colour = label_colour, size = base_size),
      # Put ticks inside graph and adjust location of axis labels appropriately.
      axis.ticks.length = ggplot2::unit(-0.3 * base_size,  "pt"),
      axis.text.x = ggplot2::element_text(margin = ggplot2::margin(t = 0.8*base_size, unit = "pt")),
      axis.text.y = ggplot2::element_text(margin = ggplot2::margin(r = 0.8*base_size, unit = "pt"), hjust = 1) # Right justify
    )


}
