FROM bioconductor/bioconductor_docker:devel

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

## RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install(ask=FALSE)"

## two packages currently failing and unavailable on Bioc devel
RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); remotes::install_git('https://git.bioconductor.org/packages/GenomeInfoDb', repos=BiocManager::repositories())"
RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); remotes::install_git('https://git.bioconductor.org/packages/MultiAssayExperiment', repos=BiocManager::repositories())"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"
