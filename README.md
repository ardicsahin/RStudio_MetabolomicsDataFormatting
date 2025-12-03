# RStudio_MetabolomicsDataFormatting
Formatted data obtained from metabolomics workbench to use in analysis

![Flowchart of Data Pipeline](/Users/ardicsahin/Downloads/MetabolomicFormatFlowchart.png)



# Metabolomics Data Formatter (Positive/Negative Mode)

## Overview
This R script performs data cleaning and pre-processing for metabolomics datasets. It is designed to take raw, tab-delimited text files representing **Positive** and **Negative** ionization modes and format the data for downstream analysis (One Factor Analysis on MetaboAnalyst).

## Features
* **Data Ingestion:** Reads tab-separated values (`.txt`) for both ionization modes.
* **Dimensionality Reduction:** Automatically removes redundant indexing columns (Column 2).
* **Nomenclature Standardization:** Corrects formatting issues in metabolite names (specifically replacing the caret `^` symbol with the chemical prime symbol `′`).
* **Structure Formatting:** Converts metabolite names to row identifiers and standardizes label headers.
* **Output Generation:** Exports cleaned data as Comma Separated Values (`.csv`).

## Prerequisites

### R Environment
This script requires **R** (version 4.0.0 or higher recommended).

### Dependencies
The following R packages are required:
* `readr` (Data import)
* `tibble` (Data frame manipulation)
* `stringr` (String replacement and regex)
* `ggplot2` (Loaded for potential plotting extensions)

You can install these dependencies via CRAN:
```r
install.packages(c("readr", "tibble", "stringr", "ggplot2"))
