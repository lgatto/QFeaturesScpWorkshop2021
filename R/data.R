##' @title Data for exercise 1
##'
##' @description
##'
##' A `QFeatures` object that has been generated to run
##' exercise 1. It was generated from the `v02-scp.Rmd` vignette that
##' replicates the SCoPE2 data processing workflow for batch LCB3 up to PSM filtering
##' based on the SCR. This dataset can be used to demonstrate the use
##' of `computeSCR`.
##'
##' `lcb3_1` contains 24 assays, each assay contains PSM data for one of
##' the 24 MS runs
##' 
##' 
##' @usage data("lcb3_1")
##' 
##' @seealso Other exercise datasets are available: [lcb3_2], 
##' [lcb3_3], [lcb3_4], [lcb3_5].
##' 
##' @md
"lcb3_1" 

##' @title Data for exercise 2
##'
##' @description
##' 
##' A `QFeatures` object that has been generated to run exercise 2. It was generated 
##' from the `v02-scp.Rmd` vignette that replicates the SCoPE2 data 
##' processing workflow for batch LCB3 up to the aggregation of PSMs 
##' to peptides. This dataset can be used to demonstrate the use of
##' `aggregateFeaturesOverAssays`.
##'
##' `lcb3_2`: contains 24 assays, each assay contains PSM data for one of
##'   the 24 MS runs.
##' 
##' @usage data("lcb3_2")
##' 
##' @seealso Other exercise datasets are available: [lcb3_1], 
##' [lcb3_3], [lcb3_4], [lcb3_5].
##' 
##' @md
"lcb3_2"

##' @title Data for exercise 3
##'
##' @description
##'
##' A `QFeatures` object that has been generated to run
##' exercise 3. It was generated from the `v02-scp.Rmd` vignette that
##' replicates the SCoPE2 data processing workflow for batch LCB3 up to
##' the QC and filtering of single-cells based on the CV. This dataset
##'  can be used to demonstrate the use of `subsetByColData`.
##'
##' `lcb3_3` contains 49 assays:
##' 
##' - Assay 1-24: PSM data for 24 MS runs
##' - Assay 25-48: aggregated peptide data for 24 MS runs
##' - Assay 49: joined peptide data containing the sample of all 24 
##'   MS runs
##' 
##' @usage data("lcb3_3")
##' 
##' @seealso Other exercise datasets are available: [lcb3_1], 
##' [lcb3_2], [lcb3_4], [lcb3_5].
##' 
##' @md
"lcb3_3"

##' @title Data for exercise 4
##'
##' @description
##'
##' A `QFeatures` object that has been generated to run exercise 4. It was generated 
##' from the `v02-scp.Rmd` vignette that replicates the SCoPE2 data 
##' processing workflow for batch LCB3 up to batch correction. This 
##' dataset can be used to demonstrate how to add 
##' `SingleCellExperiment` objects as new assay in a `QFeatures`
##' object and create links with a parent assay.
##'
##' `lcb3_4` contains 55 assays:
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
##' @usage data("lcb3_4")
##' 
##' @seealso Other exercise datasets are available: [lcb3_1], 
##' [lcb3_2], [lcb3_3], [lcb3_5].
##' 
##' @md
"lcb3_4"

##' @title Data for exercise 5
##'
##' @description
##'
##' A `QFeatures` object that has been generated to run
##' exercise 5. It was generated from the `v02-scp.Rmd` vignette that
##' replicates the SCoPE2 data processing workflow for batch LCB3 up to
##' data visualization. This dataset can be used to demonstrate the use
##' of `longFormat`.
##'
##' `lcb3_5` contains 58 assays:
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
##' @usage data("lcb3_5")
##' 
##' @seealso Other exercise datasets are available: [lcb3_1], 
##' [lcb3_2], [lcb3_3], [lcb3_4].
##' 
##' @md
"lcb3_5"

