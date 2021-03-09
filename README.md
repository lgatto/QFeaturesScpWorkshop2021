# Reproducing a single-cell proteomics data analysis using QFeatures and scp

Recent advances in sample preparation, processing and mass
spectrometry (MS) have enabled the emergence of MS-based single-cell
proteomics
(SCP). [`QFeatures`](https://uclouvain-cbio.github.io/QFeatures/)
along with its extension
[`scp`](https://uclouvain-cbio.github.io/scp/) allow for standardized
analysis of SCP data. `QFeatures` is based on the
`SummarizedExperiment` and `MultiAssayExperiment` Bioconductor
classes.  Assays in a `QFeatures` object have a hierarchical relation:
proteins are composed of peptides, themselves produced by
spectra. Throughout the aggregation and processing of these data, the
relations between assays are tracked and recorded. `QFeatures` is
further able to track those relations across hundreds of acquisition
batches that are usually required for SCP experiments. Users can
therefore easily navigate across spectra, peptide and protein
quantitative data within or between acquisition batches. In this
workshop, we will reproduce an existing SCP data analysis on a subset
of the original dataset. We will demonstrate how to import data
containing multiple acquisition batches as `QFeatures` objects, how to
process and analyse data in `QFeatures` objects, and how to interpret
the results. Along the road, we will highlight the current limitation
in the field when it comes to analysing SCP data, namely showing the
presence of important batch effects and data missingness. Some
familiarity with Bioconductor data analysis, in particular the
`SummarizedExperiment` class, and basic knowledge about single-cell
analyses are recommended to follow this workshop.

The content of this workshop is provided under a [CC-BY
ShareAlike](https://creativecommons.org/licenses/by-sa/2.0/) license.


```

To cite package 'QFeaturesScpWorkshop2021' in publications use:

  Laurent Gatto and Christophe Vanderaa (NA). QFeaturesScpWorkshop2021:
  Reproducing a single-cell proteomics data analysis using QFeatures
  and scp.. R package version 0.1.0.
  https://github.com/lgatto/QFeaturesScpWorkshop2021

A BibTeX entry for LaTeX users is

  @Manual{,
    title = {QFeaturesScpWorkshop2021: Reproducing a single-cell proteomics data analysis using QFeatures and scp.},
    author = {Laurent Gatto and Christophe Vanderaa},
    note = {R package version 0.1.0},
    url = {https://github.com/lgatto/QFeaturesScpWorkshop2021},
  }
```

## Running the workshop


You can install all necessary packages to run the workshop locally by
installing the following packages:

```r
## Bioconductor packages
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("QFeatures")
BiocManager::install("scp")
BiocManager::install("scpdata")
```

The
[lgatto/qfeaturesscpworkshop2021](https://hub.docker.com/repository/docker/lgatto/qfeaturesscpworkshop2021)
docker container has all packages necessary for running the workshop vignettes.

The container can be downloaded and run with

```sh
docker run -e PASSWORD=bioc -p 8787:8787 lgatto/qfeaturesscpworkshop2021:latest
```

(you can choose any password, not only `bioc`, above)

Once running, navigate to https://localhost:8787/ and then login with
user `rstudio` and password `bioc`.


During the [Bioc2021](https://bioc2021.bioconductor.org/) conference,
the workshop can be [run in the
cloud](http://app.orchestra.cancerdatasci.org/).
