


#' Set the typical theme for graphs.
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
#' @param base_size the base font size for text elements. Default is \code{12}.
#' @param base_family the base font family. Default is an empty string (\code{""}).
#' @param base_theme the base theme for ggplot2 graphics. Default is \code{theme_by}.
#' @param label_colour the colour for labels. Default is "\code{gray50}".
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' DF <- data.frame(x = seq(1, 10), y = seq(11,20))
#' ggplot(data = DF, mapping = aes(x = x, y = y)) +
#'   geom_point() +
#'   xy_theme()
xy_theme <- function(base_size = 12, base_family = "", base_theme = theme_bw, label_colour = "gray50") {
  # See https://github.com/infotroph/ggplot-ticks if we want to mirror ticks on top and right.
  base_theme(base_size = base_size, base_family = base_family) %+replace%
    theme(# panel.border = element_blank(),
      # Change border to gray
      panel.border = element_rect(fill = NA, color = label_colour, size = 0.5, linetype = "solid"),
      panel.grid.major = element_blank(), # No grid lines
      panel.grid.minor = element_blank(), # No grid lines
      plot.background = element_blank(),
      strip.text = element_text(colour = label_colour, size = 0.8 * base_size),
      strip.background = element_rect(fill = NA, colour = NA),
      legend.title = element_text(colour = label_colour),
      legend.background = element_rect(fill = NA, colour = NA),
      legend.key = element_rect(fill = NA, colour = NA),
      legend.text = element_text(colour = label_colour),
      axis.text = element_text(colour = label_colour, size = 0.8 * base_size),
      axis.ticks = element_line(colour = label_colour, size = 0.2), # Sets thickness of ticks
      axis.title = element_text(colour = label_colour, size = base_size),
      # Put ticks inside graph and adjust location of axis labels appropriately.
      axis.ticks.length = unit(-0.3 * base_size,  "pt"),
      axis.text.x = element_text(margin = margin(t = 0.8*base_size, unit = "pt")),
      axis.text.y = element_text(margin = margin(r = 0.8*base_size, unit = "pt"), hjust = 1) # Right justify
    )
}
