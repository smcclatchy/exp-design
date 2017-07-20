---
layout: page
title: Installing software from github.com
---





```r
#install.packages("devtools")
library(devtools)
```

```
## 
## Attaching package: 'devtools'
```

```
## The following object is masked from 'package:downloader':
## 
##     source_url
```

```
## The following object is masked from 'package:rafalib':
## 
##     install_bioc
```

```r
#install_github("rafalib","ririzarr")
library(rafalib)
mypar
```

```
## function (a = 1, b = 1, brewer.n = 8, brewer.name = "Dark2", 
##     cex.lab = 1, cex.main = 1.2, cex.axis = 1, mar = c(2.5, 2.5, 
##         1.6, 1.1), mgp = c(1.5, 0.5, 0), ...) 
## {
##     par(mar = mar, mgp = mgp, cex.lab = cex.lab, cex.main = cex.main, 
##         cex.axis = cex.axis)
##     par(mfrow = c(a, b), ...)
##     palette(RColorBrewer::brewer.pal(brewer.n, brewer.name))
## }
## <environment: namespace:rafalib>
```

```r
shist(rnorm(100))
```

![plot of chunk unnamed-chunk-1](figure/github-unnamed-chunk-1-1.png)

