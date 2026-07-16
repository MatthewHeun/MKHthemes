# Sector colours

A string list containing colours for economic sectors. These colours
were used for Figure 6 of P. E. Brockway, M. K. Heun, Z. Marshall, E.
Aramendia, P. Steenwyk, T. Relph, M. Widjanarko, J. J. Kim, A. Sainju,
and J. Irtube. A country-level primary-final-useful (CL-PFU) energy and
exergy database: Overview of its construction and 1971–2020 world-level
efficiency results. Environmental Research: Energy, 1(025005):1–29, June
2024. <https://doi.org/10.1088/2753-3751/ad4e39>

## Usage

``` r
sector_colours
```

## Format

A string list with 21 entries.

- AFF; Agriculture, forestry, and fishing; Agriculture, forestry,\nand
  fishing:

  The colour for the Agriculture, forestry, and fishing sector.

- Res; Residential:

  The colour for the Residential sector.

- Ind; Industry:

  The colour for the Industry sector.

- CPS; Commercial and public services; Commercial and\npublic services:

  The colour for the Commercial and public services sector.

- Trans; Transport:

  The colour for the Transport sector.

- NES:

  The colour for the NES sector.

- Final consumption not elsewhere specified; Final consumption
  not\nelsewhere specified:

  The colour for unspecified sectors.

- NEU; Non-energy use:

  The colour for the Non-energy use sector.

- EIOU; Energy industry own use; Energy industry\nown use:

  The colour for the Energy industry own use sector.

- World:

  The colour for a World sector.

## Examples

``` r
sector_colours
#>                                        AFF 
#>                               "palegreen4" 
#>         Agriculture, forestry, and fishing 
#>                               "palegreen4" 
#>        Agriculture, forestry,\nand fishing 
#>                               "palegreen4" 
#>                                        Res 
#>                                  "orange4" 
#>                                Residential 
#>                                  "orange4" 
#>                                        Ind 
#>                                  "orange3" 
#>                                   Industry 
#>                                  "orange3" 
#>                                        CPS 
#>                                   "orange" 
#>             Commercial and public services 
#>                                   "orange" 
#>            Commercial and\npublic services 
#>                                   "orange" 
#>                                      Trans 
#>                                   "salmon" 
#>                                  Transport 
#>                                   "salmon" 
#>                                        NES 
#>                           "lavenderblush4" 
#>  Final consumption not elsewhere specified 
#>                           "lavenderblush4" 
#> Final consumption not\nelsewhere specified 
#>                           "lavenderblush4" 
#>                                        NEU 
#>                           "lavenderblush2" 
#>                             Non-energy use 
#>                           "lavenderblush2" 
#>                                       EIOU 
#>                             "deepskyblue3" 
#>                    Energy industry own use 
#>                             "deepskyblue3" 
#>                   Energy industry\nown use 
#>                             "deepskyblue3" 
#>                                      World 
#>                                    "black" 
```
