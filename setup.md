---
layout: page
title: Setup
permalink: /setup/
---
## Installation

This lesson assumes you have the R and RStudio software installed on your computer.

R can be downloaded from [CRAN](https://cran.r-project.org/mirrors.html).

RStudio is an environment for developing using R.
It can be downloaded [here](https://www.rstudio.com/products/rstudio/download/).
You will need the Desktop version for your computer.

## Data files and project organization

1. Make a new folder in your Desktop called `experimental_design`. Move into this new folder.

2. Create  a `data` folder to hold the data, a `scripts` folder to house your scripts, and a `results` folder to hold results.

Alternatively, you can use the R console to run the following commands for steps 1 and 2.

~~~
setwd("~/Desktop")
dir.create("./experimental_design")
setwd("~/Desktop/experimental_design")
dir.create("./data")
dir.create("./scripts")
dir.create("./results")
~~~
{: .r}

3. Please download the following files **before the workshop**, and place them in your `data` folder. You can download the files from the URLs below and move the files the same way that you would for downloading and moving any other kind of data.

- [Svenson DO850 mouse body weight data](https://raw.githubusercontent.com/smcclatchy/dals-inference/gh-pages/data/bodyWeights.csv)
- [CGD Collaborative Cross Strain Survey data](https://raw.githubusercontent.com/smcclatchy/dals-inference/gh-pages/data/CGDpheno3.csv)

Alternatively, you can copy and paste the following into the R console to download the data.
~~~
setwd("~/Desktop/experimental_design")
download.file("https://raw.githubusercontent.com/smcclatchy/dals-inference/gh-pages/data/bodyWeights.csv", "./data/bodyWeights.csv")
download.file("https://raw.githubusercontent.com/smcclatchy/dals-inference/gh-pages/data/CGDpheno3.csv", "./data/CGDpheno3.csv")
~~~
{: .r}

