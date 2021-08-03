##' @title Data for exercise 1
##'
##' @description
##'
##' A `QFeatures` object called `lcb3` that has been generated to run
##' exercise 1. It was generated from the `v02-scp.Rmd` vignette that
##' replicates the SCoPE2 data processing workflow for batch LCB3 up to PSM filtering
##' based on the SCR. This dataset can be used to demonstrate the use
##' of `computeSCR`.
##'
##' `lcb3` contains 24 assays, each assay contains PSM data for one of
##' the 24 MS runs
##' 
##' 
##' @usage data("exercise1")
##' 
##' @seealso Other exercise datasets are available: [exercise2], 
##' [exercise3], [exercise4], [exercise5].
##' 
##' @export
##' @md
exercise1 <- function() {
    message("Compute the SCR by considering blanks, monocytes and macrophages as samples of interest. Note there are multiple samples per run for each PSM and you should therefore compute the mean of the samples. There is only a single carrier, so you don't need to bother providing `carrierFUN`. ")
    data("exercise1")
} 

##' @title Data for exercise 2
##'
##' @description
##' 
##' The data have been generated to run exercise 2. It was generated 
##' from the `v02-scp.Rmd` vignette that replicates the SCoPE2 data 
##' processing workflow for batch LCB3 up to the aggregation of PSMs 
##' to peptides. This dataset can be used to demonstrate the use of
##' `aggregateFeaturesOverAssays`.
##'
##' It loads 3 objects: 
##' 
##' - `lcb3`: contains 24 assays, each assay contains PSM data for one of
##'   the 24 MS runs.
##' - `peptideAssays`: a vector containing new names for the aggregated
##'   assays
##' - `remove.duplicates`: a function that can be used as a custom 
##'   aggregation function. 
##' 
##' @usage data("exercise2")
##' 
##' @seealso Other exercise datasets are available: [exercise1], 
##' [exercise3], [exercise4], [exercise5].
##' 
##' @export
##' @md
exercise2 <- function()  {
    message("Use the `aggregateFeaturesOverAssays` function to aggregate PSMs to peptides. Don't forget to provide the `remove.duplicates` as an aggregating function. ")
    data("exercise2")
} 

##' @title Data for exercise 3
##'
##' @description
##'
##' A `QFeatures` object called `lcb3` that has been generated to run
##' exercise 3. It was generated from the `v02-scp.Rmd` vignette that
##' replicates the SCoPE2 data processing workflow for batch LCB3 up to
##' the QC and filtering of single-cells based on the CV. This dataset
##'  can be used to demonstrate the use of `subsetByColData`.
##'
##' `lcb3` contains 49 assays:
##' 
##' - Assay 1-24: PSM data for 24 MS runs
##' - Assay 25-48: aggregated peptide data for 24 MS runs
##' - Assay 49: joined peptide data containing the sample of all 24 
##'   MS runs
##' 
##' @usage data("exercise3")
##' 
##' @seealso Other exercise datasets are available: [exercise1], 
##' [exercise2], [exercise4], [exercise5].
##' 
##' @export
##' @md
exercise3 <- function()  {
    message("Keep cells that have a median CV lower than 0.365. You should also keep macrophages and monocytes as those represent the samples of interest. You can easily achieve this by subsetting the samples based on the associated `colData` using the `subsetByColData` function from the `MultiAssayExperiment` package.")
    data("exercise3")
} 


##' @title Data for exercise 4
##'
##' @description
##'
##' The data have been generated to run exercise 4. It was generated 
##' from the `v02-scp.Rmd` vignette that replicates the SCoPE2 data 
##' processing workflow for batch LCB3 up to batch correction. This 
##' dataset can be used to demonstrate how to add 
##' `SingleCellExperiment` objects as new assay in a `QFeatures`
##' object and create links with a parent assay.
##'
##' `lcb3` contains 55 assays:
##' 
##' - Assay 1-24: PSM data for 24 MS runs
##' - Assay 25-48: aggregated peptide data for 24 MS runs
##' - Assay 49: joined peptide data containing the sample of all 24 
##'   MS runs
##' - Assay 50: peptide data after a first normalization
##' - Assay 51: peptide data after a second normalization
##' - Assay 52: peptide data after log-transformation
##' - Assay 53: aggregated protein data
##' - Assay 54: protein data after a first normalization
##' - Assay 55: protein data after a second normalization and imputation
##'   of missing data
##'   
##' `sce` corresponds to Assay 55 after batch correction using `ComBat`.
##'
##' @usage data("exercise4")
##' 
##' @seealso Other exercise datasets are available: [exercise1], 
##' [exercise2], [exercise3], [exercise5].
##' 
##' @export
##' @md
exercise4 <- function()  {
    message("add the batch corrected protein data as a new assay in the `QFeatures` object (you can call it `proteins_batchC`). Create a one-to-one relationship between the features of the last assay (`proteins_norm2`) and the features of the newly added assay.")
    data("exercise4")
} 


##' @title Data for exercise 5
##'
##' @description
##'
##' A `QFeatures` object called `lcb3` that has been generated to run
##' exercise 5. It was generated from the `v02-scp.Rmd` vignette that
##' replicates the SCoPE2 data processing workflow for batch LCB3 up to
##' data visualization. This dataset can be used to demonstrate the use
##' of `longFormat`.
##'
##' `lcb3` contains 58 assays:
##' 
##' - Assay 1-24: PSM data for 24 MS runs
##' - Assay 25-48: aggregated peptide data for 24 MS runs
##' - Assay 49: joined peptide data containing the sample of all 24 
##'   MS runs
##' - Assay 50: peptide data after a first normalization
##' - Assay 51: peptide data after a second normalization
##' - Assay 52: peptide data after log-transformation
##' - Assay 53: aggregated protein data
##' - Assay 54: protein data after a first normalization
##' - Assay 55: protein data after a second normalization and imputation
##'   of missing data
##' - Assay 56: batch corrected protein data
##' - Assay 57: batch corrected protein data after a first normalization
##' - Assay 58: batch corrected protein data after a second normalization
##' 
##' @usage data("exercise5")
##' 
##' @seealso Other exercise datasets are available: [exercise1], 
##' [exercise2], [exercise3], [exercise4].
##' 
##' @export
##' @md
exercise5 <- function()  {
    message("Convert the `lcb3` dataset to a long format table. First subset the data Filamin-A (`P21333`) and all its associated features (PSMs and peptides). Remember the 3-index subsetting of a `QFeatures` object. You can also include `rowData` and `colData` variable. For this exercise, include the `colData` variables: `Set`, `Channel` and `SampleType`.")
    data("exercise5")
} 
