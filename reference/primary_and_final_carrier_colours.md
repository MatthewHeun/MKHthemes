# Primary- and final-stage energy carrier colours

A string list containing colours for primary- and final-stage energy
carriers. These colours were used for Figure 5 of P. E. Brockway, M. K.
Heun, Z. Marshall, E. Aramendia, P. Steenwyk, T. Relph, M. Widjanarko,
J. J. Kim, A. Sainju, and J. Irtube. A country-level
primary-final-useful (CL-PFU) energy and exergy database: Overview of
its construction and 1971–2020 world-level efficiency results.
Environmental Research: Energy, 1(025005):1–29, June 2024.
<https://doi.org/10.1088/2753-3751/ad4e39>

## Usage

``` r
primary_and_final_carrier_colours
```

## Format

A string list with 18 entries.

- BM; Biomass:

  The colour for Biomass.

- Feed:

  The colour for Feed.

- Food:

  The colour for Food.

- CCP; Coal and coal products; Coal and coal\nproducts:

  The colour for Coal and coal products.

- OOP; Oil and oil products; Oil and oil\nproducts:

  The colour for Oil and oil products.

- NG; Natural gas:

  The colour for Natural gas.

- BF; Biofuels:

  The colour for Biofuels.

- Elect; Electricity:

  The colour for Electricity.

- Heat:

  The colour for Heat.

- Waste:

  The colour for Waste.

## Examples

``` r
primary_and_final_carrier_colours
#>                    BM               Biomass                  Feed 
#>        "springgreen3"        "springgreen3"        "springgreen4" 
#>                  Food                   CCP  Coal & coal products 
#>        "springgreen2"               "black"               "black" 
#> Coal & coal\nproducts                   OOP    Oil & oil products 
#>               "black"              "gray40"              "gray40" 
#>   Oil & oil\nproducts                    NG           Natural gas 
#>              "gray40"              "gray75"              "gray75" 
#>                    BF              Biofuels                 Elect 
#>               "gold3"               "gold3"             "yellow2" 
#>           Electricity                  Heat                 Waste 
#>             "yellow2"           "orangered"               "brown" 
```
