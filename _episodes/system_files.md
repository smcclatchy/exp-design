## R system files
Note that this file is also included in the 'dagdata' package. If you have the package installed the this file is already in your system and you can use the 'system.file' function to find it


```r
dir <- system.file(package="dagdata")
list.files(dir)
```

```
## character(0)
```

```r
list.files(file.path(dir,"extdata"))
```

```
## character(0)
```

```r
filename <- file.path(dir,"extdata/mice_pheno.csv")
dat <- read.csv(filename)
```

```
## Warning in file(file, "rt"): cannot open file '/extdata/mice_pheno.csv': No
## such file or directory
```

```
## Error in file(file, "rt"): cannot open the connection
```


## Using download

url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/mice_pheno.csv"
filename <- tempfile()
if (!file.exists(filename)) download.file(url,destfile=filename,method="curl")
dat <- read.csv(filename)
