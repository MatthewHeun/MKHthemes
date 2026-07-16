# This script creates constants and saves them in the right locations.
# If there are any changes to these constants,
# source this script before building the package.

#
# These graphical styles were first used
# in the CL-PFU database paper.
# P. E. Brockway, M. K. Heun, Z. Marshall, E. Aramendia, P. Steenwyk,
# T. Relph, M. Widjanarko, J. J. Kim, A. Sainju, and J. Irtube.
# A country-level primary-final-useful (CL-PFU) energy and exergy database:
# Overview of its construction and 1971–2020 world-level efficiency results.
# Environmental Research: Energy, 1(025005):1–29, June 2024.
# https://doi.org/10.1088/2753-3751/ad4e39
#

# See colours at https://r-charts.com/colors/
continent_colours <- c(Africa = "orange",
                       Asia = "gray",
                       Bunkers = "darkgray",
                       Europe = "darkgreen",
                       MidEast = "cadetblue3",
                       `Middle East` = "cadetblue3",
                       NoAmr = "red",
                       `North America` = "red",
                       Oceania = "blue",
                       SoCeAmr = "violet",
                       `South and Central America` = "violet",
                       `South and\nCentral America` = "violet",
                       World = "black")

usethis::use_data(continent_colours, overwrite = TRUE)



continent_linetypes <- c(Africa = "solid",
                         Asia = "solid",
                         Bunkers = "dashed",
                         Europe = "solid",
                         MidEast = "solid",
                         `Middle East` = "solid",
                         NoAmr = "solid",
                         `North America` = "solid",
                         Oceania = "solid",
                         SoCeAmr = "solid",
                         `South and Central America` = "solid",
                         `South and\nCentral America` = "solid",
                         World = "solid")

usethis::use_data(continent_linetypes, overwrite = TRUE)



continent_linewidths <- c(Africa = 0.3,
                          Asia = 0.3,
                          Bunkers = 0.2,
                          Europe = 0.3,
                          MidEast = 0.3,
                          `Middle East` = 0.3,
                          NoAmr = 0.3,
                          `North America` = 0.3,
                          Oceania = 0.3,
                          SoCeAmr = 0.3,
                          `South and Central America` = 0.3,
                          `South and\nCentral America` = 0.3,
                          World = 0.3)

usethis::use_data(continent_linewidths, overwrite = TRUE)



sector_colours <- c(AFF = "palegreen4",
                    `Agriculture, forestry, and fishing` = "palegreen4",
                    `Agriculture, forestry,\nand fishing` = "palegreen4",
                    Res = "orange4",
                    Residential = "orange4",
                    Ind = "orange3",
                    Industry = "orange3",
                    CPS = "orange",
                    `Commercial and public services` = "orange",
                    `Commercial and\npublic services` = "orange",
                    Trans = "salmon",
                    Transport = "salmon",
                    NES = "lavenderblush4",
                    `Final consumption not elsewhere specified` = "lavenderblush4",
                    `Final consumption not\nelsewhere specified` = "lavenderblush4",
                    NEU = "lavenderblush2",
                    `Non-energy use` = "lavenderblush2",
                    EIOU = "deepskyblue3",
                    `Energy industry own use` = "deepskyblue3",
                    `Energy industry\nown use` = "deepskyblue3",
                    World = "black")

usethis::use_data(sector_colours, overwrite = TRUE)



primary_carrier_colours <- c(BM = "springgreen3",
                             Biomass = "springgreen3",
                             CCP = "black",
                             `Coal & coal products` = "black",
                             `Coal & coal\nproducts` = "black",
                             OOP = "gray40",
                             `Oil & oil products` = "gray40",
                             `Oil & oil\nproducts` = "gray40",
                             NG = "gray75",
                             `Natural gas` = "gray75",
                             BF = "gold3",
                             Biofuels = "gold3",
                             Elect = "yellow2",
                             Electricity = "yellow2",
                             Heat = "orangered",
                             Waste = "brown")

usethis::use_data(primary_carrier_colours, overwrite = TRUE)



final_carrier_colours <- c(Feed = "springgreen4",
                           Food = "springgreen2",
                           CCP = "black",
                           `Coal & coal products` = "black",
                           `Coal & coal\nproducts` = "black",
                           OOP = "gray40",
                           `Oil & oil products` = "gray40",
                           `Oil & oil\nproducts` = "gray40",
                           NG = "gray75",
                           `Natural gas` = "gray75",
                           BF = "gold3",
                           Biofuels = "gold3",
                           Elect = "yellow2",
                           Electricity = "yellow2",
                           Heat = "orangered",
                           Waste = "brown")

usethis::use_data(final_carrier_colours, overwrite = TRUE)



primary_and_final_carrier_colours <- c(BM = "springgreen3",
                                       Biomass = "springgreen3",
                                       Feed = "springgreen4",
                                       Food = "springgreen2",
                                       CCP = "black",
                                       `Coal & coal products` = "black",
                                       `Coal & coal\nproducts` = "black",
                                       OOP = "gray40",
                                       `Oil & oil products` = "gray40",
                                       `Oil & oil\nproducts` = "gray40",
                                       NG = "gray75",
                                       `Natural gas` = "gray75",
                                       BF = "gold3",
                                       Biofuels = "gold3",
                                       Elect = "yellow2",
                                       Electricity = "yellow2",
                                       Heat = "orangered",
                                       Waste = "brown")

usethis::use_data(primary_and_final_carrier_colours, overwrite = TRUE)



useful_carrier_colours <- c(AnMech = "purple1",
                            `Animal mechanical work` = "purple1",
                            `Animal mechanical\nwork` = "purple1",
                            HuMech = "purple4",
                            `Human mechanical work` = "purple4",
                            `Human mechanical\nwork` = "purple4",
                            MechW = "pink3",
                            `Mechanical work` = "pink3",
                            Prop = "pink1",
                            Propulsion = "pink1",
                            HPF = "ivory3",
                            `High-pressure fluids` = "ivory3",
                            `High-pressure\nfluids` = "ivory3",
                            LTH = "orangered1",
                            `Low-temperature heat` = "orangered1",
                            `Low-temperature\nheat` = "orangered1",
                            MTH = "orangered3",
                            `Medium-temperature heat` = "orangered3",
                            `Medium-temperature\nheat` = "orangered3",
                            HTH = "orangered4",
                            `High-temperature heat` = "orangered4",
                            `High-temperature\nheat` = "orangered4",
                            LTC = "deepskyblue3",
                            `Low-temperature cooling` = "deepskyblue3",
                            `Low-temperature\ncooling` = "deepskyblue3",
                            IP = "palegreen4",
                            `Information processing` = "palegreen4",
                            `Information\nprocessing` = "palegreen4",
                            L = "gold2",
                            Light = "gold2")

usethis::use_data(useful_carrier_colours, overwrite = TRUE)
