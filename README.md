---
title: "QFeatures and scp Workshop - Bioc2021"
author: "Laurent Gatto and Christophe Vanderaa"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{QFeatures and scp Workshop - Bioc2021}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
bibliography: refs.bib
---

```{r style, echo = FALSE, results = 'asis', message = FALSE}
library(BiocStyle)
knitr::opts_chunk$set(echo = TRUE,
                      message = FALSE,
                      collapse = TRUE)
```

# Single-cell proteomics data analysis using QFeatures and scp

Authors:
    Laurent Gatto^[UCLouvain, Belgium],
    Christophe Vanderaa^[UCLouvain, Belgium].
    <br/>
**Last modified:** `r file.info("README.md")$mtime`<br/>

## Overview

### Description

MS-based single-cell proteomics (SCP) is an emerging field that 
requires a dedicated computational environment. `QFeatures` along with
its extension `scp` allow for standardized analysis of SCP data. The 
workshop will start by introducing the `QFeatures` class and its 
functions to perform generic proteomics data analysis. We will then 
move to SCP and present how `scp` extends `QFeatures` to single-cell 
applications. The remainder of the workshop will be a hands-on session
where attendees will be guided through the reproduction of a real-life
analysis of published SCP data. Along the reproduction exercise, we 
will point out to current challenges that still need to be tackled 
computationally. This workshop is meant for inexperienced users that 
want to learn how to perform current state-of-the-art analysis of SCP
data as well as experienced developers interested in contributing to 
an emerging and exciting single-cell technology. 

### Pre-requisites

* Basic knowledge of R syntax
* Familiarity with the `SummarizedExperiment` class
* Familiarity with the `tidyverse` ecosystem

We recommend reading the paper that has published the SCP analysis that 
will be reproduced in this workshop:

Specht, Harrison, Edward Emmott, Aleksandra A. Petelski, R. Gray 
Huffman, David H. Perlman, Marco Serra, Peter Kharchenko, Antonius 
Koller, and Nikolai Slavov. 2021. "Single-Cell Proteomic and 
Transcriptomic Analysis of Macrophage Heterogeneity Using SCoPE2.” 
Genome Biology 22 (1): 50. 
[link to article](http://dx.doi.org/10.1186/s13059-021-02267-5),
[link to preprint](https://www.biorxiv.org/content/10.1101/665307v5)

### _R_ / _Bioconductor_ packages used

`QFeatures`, `scp`, `scpdata`, `MultiAssayExperiment`, 
`SingleCellExperiment`


### Time outline

This 90 min workshop will be split in three parts:

| Activity                                            | Time |
|-----------------------------------------------------|------|
| Introduction to the `QFeatures` class and functions | 25m  |
| Introduction to SCP and the `scp` package           | 20m  |
| Reproducing SCoPE2: a published SCP data analysis   | 45m  |

### Learning goals

- Highlight the common steps to perform MS-based proteomics data analysis
- Understand the specificities when it comes to single-cell data
- Identify the current challenges in the SCP data analysis

### Learning objectives

- Use `QFeatures` and `scp` to perform a real-life analysis of SCP 
  data
- Integrate the workflow with other tools such as the `tidyverse` 
  ecosystem for efficient data visualization or the 
  `SingleCellExperiment` related tools for extending the current
  analysis workflow.

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
the workshop can be [run in the cloud](http://app.orchestra.cancerdatasci.org/).

The content of this workshop is provided under a 
[CC-BY ShareAlike](https://creativecommons.org/licenses/by-sa/2.0/) 
license.


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
