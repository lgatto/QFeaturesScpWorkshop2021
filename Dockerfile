FROM bioconductor/bioconductor_docker:devel

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install(ask=FALSE)"

## these two packages currently fail on Bioc devel
RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install("Bioconductor/GenomeInfoDb")"
RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install("waldronlab/MultiAssayExperiment")"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"
