


#' Set a pleasing theme for graphs.
#'
#' Provides a pleasing graphical style for `ggplot2` that includes
#' \itemize{
#'   \item gray axes,
#'   \item gray tic marks,
#'   \item inward-pointing tic marks,
#'   \item right-justified y-axis labels,
#'   \item no grid lines, and
#'   \item white background.
#' }
#'
#' By default, the font size for axis titles is set by `font_size`.
#' The font size for all other text elements is scaled relative to `font_size`,
#' by default 80% smaller than the axis titles.
#' Adjust `font_size_scale` if 80% is not to your liking.
#'
#' Spacing between graphical elements can be specified with more precision
#' using this function.
#' `spacing_scale` adjusts spacing relative to `font_size` for all
#' graphical elements.
#' But spacing between axis labels and strip labels and nearby
#' graph borders can also be specified individually.
#' See the vignette for examples.
#'
#' @param font_size The base font size in points for fonts and other graphical elements.
#'                  `font_size` is directly the size of the x- and y-axis titles.
#'                  Default is `12`.
#' @param font_family The font family used in the graph.
#'                    Default is an empty string (`""`), a sans-serif font.
#' @param font_size_scale A default scale factor for non-axis-title fonts.
#'                        Default is `0.8`.
#'                        Change this parameter if you want to change the size
#'                        of all non-axis-title text.
#' @param spacing_scale A default scale factor for spacing between text and axes.
#'                      Default is `0.2`.
#' @param x_axis_labels_spacing The distance between x axis labels and the x axis itself in points.
#'                              Default is `spacing_scale*font_size`, normally 2.4 points.
#' @param y_axis_labels_spacing The distance between y axis labels and the y axis itself in points.
#'                              Default is `spacing_scale*font_size`, normally 2.4 points.
#' @param col_facet_labels_spacing The distance between x strip text
#'                                 (labels at the top of a faceted plot) and
#'                                 the top border of the individual graphs
#'                                 in points.
#'                                 Default is `spacing_scale*font_size`, normally 2.4 points,
#'                                 to leave space for descenders.
#' @param row_facet_labels_spacing The distance between y strip text
#'                                 (labels to the right of a faceted plot) and
#'                                 the right border of the individual graphs
#'                                 in points.
#'                                 Default is `spacing_scale*font_size`, normally 2.4 points,
#'                                 to leave space for descenders.
#' @param tick_length The tick length in points. Default is `-1.5*spacing_scale*font_size`, normally -3.6 points,
#'                    so the ticks will be slightly longer than
#'                    the spacing between text and borders.
#'                    Negative tick length indicates the ticks
#'                    should be placed inside the graph, where ticks belong!
#' @param border_and_label_colour The colour for borders and labels. Default is "gray50".
#'
#' @importFrom ggplot2 %+replace%
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' DF <- data.frame(x = seq(1, 10), y = seq(11,20))
#' p <- DF |>
#'   ggplot(mapping = aes(x = x, y = y)) +
#'   geom_line()
#' p
#' p + MKHthemes::xy_theme()
xy_theme <- function(font_size = 12,
                     font_family = "",
                     font_size_scale = 0.8,
                     spacing_scale = 0.2,
                     x_axis_labels_spacing = spacing_scale*font_size,
                     y_axis_labels_spacing = spacing_scale*font_size,
                     col_facet_labels_spacing = spacing_scale*font_size,
                     row_facet_labels_spacing = spacing_scale*font_size,
                     tick_length = -1.5*spacing_scale*font_size,
                     border_and_label_colour = "gray50") {
  # See https://github.com/infotroph/ggplot-ticks if we want to mirror ticks on top and right.
  ggplot2::theme_bw(base_size = font_size, base_family = font_family) %+replace%
    ggplot2::theme(
      # Set border colour to border_and_label_colour
      panel.border = ggplot2::element_rect(fill = NA,
                                           color = border_and_label_colour,
                                           linewidth = 0.5,
                                           linetype = "solid"),
      panel.grid.major = ggplot2::element_blank(), # No grid lines
      panel.grid.minor = ggplot2::element_blank(), # No grid lines
      plot.background = ggplot2::element_blank(),
      strip.text = ggplot2::element_text(colour = border_and_label_colour,
                                         size = font_size_scale*font_size),
      strip.background = ggplot2::element_rect(fill = NA,
                                               colour = NA),
      legend.title = ggplot2::element_text(colour = border_and_label_colour,
                                           size = font_size_scale*font_size),
      legend.background = ggplot2::element_rect(fill = NA,
                                                colour = NA),
      legend.key = ggplot2::element_rect(fill = NA,
                                         colour = NA),
      legend.text = ggplot2::element_text(colour = border_and_label_colour,
                                          size = font_size_scale*font_size),
      axis.ticks = ggplot2::element_line(colour = border_and_label_colour,
                                         linewidth = 0.2), # Sets thickness of ticks
      axis.title = ggplot2::element_text(colour = border_and_label_colour,
                                         size = font_size),
      # Put ticks inside graph and adjust location of axis labels appropriately.
      axis.ticks.length = ggplot2::unit(tick_length,  "pt"),
      axis.text.x = ggplot2::element_text(colour = border_and_label_colour,
                                          margin = ggplot2::margin(t = x_axis_labels_spacing, unit = "pt"),
                                          size = font_size_scale*font_size),
      axis.text.y = ggplot2::element_text(colour = border_and_label_colour,
                                          margin = ggplot2::margin(r = y_axis_labels_spacing, unit = "pt"),
                                          size = font_size_scale*font_size,
                                          hjust = 1), # Right justify
      strip.text.x = ggplot2::element_text(margin = ggplot2::margin(b = col_facet_labels_spacing),
                                           size = font_size_scale*font_size),
      strip.text.y = ggplot2::element_text(margin = ggplot2::margin(l = row_facet_labels_spacing),
                                           size = font_size_scale*font_size,
                                           angle = 270)
    )
}
