


#' Set a pleasing theme for graphs.
#'
#' This function provides a graphical style for `ggplot2` that includes
#' \itemize{
#'   \item gray axes,
#'   \item gray tic marks,
#'   \item inward-pointing tic marks,
#'   \item right-justified y-axis labels,
#'   \item no grid lines, and
#'   \item white background.
#' }
#'
#' @param base_size The base font size for text elements. Default is `12`.
#' @param tick_length The tick length in points. Default is `-0.3*base_size`, which is -3.6 points.
#'                    Negative is inside the graph, where ticks belong!
#' @param x_axis_labels_spacing The distance between x axis labels and the x axis itself in points.
#'                              Default is `0.8 * base_size`.
#' @param y_axis_labels_spacing The distance between y axis labels and the y axis itself in points.
#'                              Default is `0.8 * base_size`.
#' @param base_family The base font family. Default is an empty string (`""`).
#' @param base_theme The base theme for ggplot2 graphics. Default is `ggplot2::theme_bw`.
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
xy_theme <- function(base_size = 12,
                     tick_length = -0.3*base_size,
                     x_axis_text_spacing = 0.8*base_size,
                     y_axis_text_spacing = 0.8*base_size,
                     base_family = "",
                     base_theme = ggplot2::theme_bw,
                     label_colour = "gray50") {
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
      axis.ticks.length = ggplot2::unit(tick_length,  "pt"),
      axis.text.x = ggplot2::element_text(margin = ggplot2::margin(t = x_axis_text_spacing, unit = "pt")),
      axis.text.y = ggplot2::element_text(margin = ggplot2::margin(r = y_axis_text_spacing, unit = "pt"), hjust = 1) # Right justify
    )
}
