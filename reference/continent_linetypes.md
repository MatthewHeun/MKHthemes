# Continent linetypes

A string list containing linetypes for continents. These linetypes were
used for Figure B1 of P. E. Brockway, M. K. Heun, Z. Marshall, E.
Aramendia, P. Steenwyk, T. Relph, M. Widjanarko, J. J. Kim, A. Sainju,
and J. Irtube. A country-level primary-final-useful (CL-PFU) energy and
exergy database: Overview of its construction and 1971–2020 world-level
efficiency results. Environmental Research: Energy, 1(025005):1–29, June
2024. <https://doi.org/10.1088/2753-3751/ad4e39>

## Usage

``` r
continent_linetypes
```

## Format

A string list with 13 entries.

- Africa:

  The linetype for Africa, "solid".

- Asia:

  The linetype for Asia, "solid".

- Bunkers:

  The linetype for bunkers, "dashed".

- Europe:

  The linetype for Europe, "solid".

- MidEast, Middle East:

  The linetype for the Middle East, "solid".

- NoAmr, North America:

  The linetype for North America, "solid".

- Oceania:

  The linetype for Oceania, "solid".

- SoCeAmr, South and Central America:

  The linetype for South and Central America, "solid".

- Africa:

  The linetype for World, "solid".

## Examples

``` r
continent_linetypes
#>                     Africa                       Asia 
#>                    "solid"                    "solid" 
#>                    Bunkers                     Europe 
#>                   "dashed"                    "solid" 
#>                    MidEast                Middle East 
#>                    "solid"                    "solid" 
#>                      NoAmr              North America 
#>                    "solid"                    "solid" 
#>                    Oceania                    SoCeAmr 
#>                    "solid"                    "solid" 
#>  South and Central America South and\nCentral America 
#>                    "solid"                    "solid" 
#>                      World 
#>                    "solid" 
```
