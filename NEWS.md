---
title: "Release notes for `MKHthemes`"
output: html_document
---

Cite all releases with doi [10.5281/zenodo.8349995](https://doi.org/10.5281/zenodo.8349995), 
which always resolves to the latest release.


# MKHthemes 0.1.5 (2023-12-21)

* Add more badges.
* Added code of conduct.
* Added contributing guide.
* Added a statement of need to `README.Rmd`.


# MKHthemes 0.1.4 (2023-11-29) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.10223694.svg)](https://doi.org/10.5281/zenodo.10223694)

* Add continuous integration and upload to CodeCov.
* Breaking change: some argument names for `xy_theme()` have changed.
    - x_strip_labels_spacing --> col_facet_labels_spacing
    - y_strip_labels_spacing --> row_facet_labels_spacing
* No new tests.
    - Still at 1 test, which passes.
    - Test coverage is at 100%.
    

# MKHthemes 0.1.3 (2023-09-16) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.8352370.svg)](https://doi.org/10.5281/zenodo.8352370)

* Now building and publishing website
* Reporting tests for the first time.
    - Starting at 1 test, which passes.
    - Test coverage is at 100%.


# MKHthemes 0.1.2 (2023-09-15) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.8350273.svg)](https://doi.org/10.5281/zenodo.8350273)

* Clarified policies for font sizes.


# MKHthemes 0.1.1 (2023-09-15) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.8349996.svg)](https://doi.org/10.5281/zenodo.8349996)

* Updated `xy_theme()` with better defaults for
  spacing between strip labels and graphs.
* Removed the base theme argument to `xy_theme()`.
  It was never used, anyway.
  
  
# MKHthemes 0.1.0 (2018-07-07)

* Initial release
