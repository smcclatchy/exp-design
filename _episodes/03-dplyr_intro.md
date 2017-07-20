---
title: Brief Introduction to `dplyr`
teaching: 0
exercises: 0
questions:
- "?"
- "?"
objectives:
- ""
- ""
keypoints:
- "."
- "."
source: Rmd
---



## Brief Introduction to `dplyr`

The learning curve for R syntax is slow. One of the more difficult aspects that requires some getting used to is subsetting data tables. The `dplyr` package brings these tasks closer to English and we are therefore going to introduce two simple functions: one is used to subset and the other to select columns.

Take a look at the dataset we read in:

~~~
filename <- "femaleMiceWeights.csv"
dat <- read.csv(filename)
head(dat) #In R Studio use View(dat)
~~~
{: .r}



~~~
  Diet Bodyweight
1 chow      21.51
2 chow      28.14
3 chow      24.04
4 chow      23.45
5 chow      23.68
6 chow      19.79
~~~
{: .output}

There are two types of diets, which are denoted in the first column. If we want just the weights, we only need the second column. So if we want the weights for mice on the `chow` diet, we subset and filter like this:


~~~
library(dplyr) 
chow <- filter(dat, Diet=="chow") #keep only the ones with chow diet
head(chow)
~~~
{: .r}



~~~
  Diet Bodyweight
1 chow      21.51
2 chow      28.14
3 chow      24.04
4 chow      23.45
5 chow      23.68
6 chow      19.79
~~~
{: .output}

And now we can select only the column with the values:


~~~
chowVals <- select(chow,Bodyweight)
head(chowVals)
~~~
{: .r}



~~~
  Bodyweight
1      21.51
2      28.14
3      24.04
4      23.45
5      23.68
6      19.79
~~~
{: .output}

A nice feature of the `dplyr` package is that you can perform consecutive tasks by using what is called a "pipe". In `dplyr` we use `%>%` to denote a pipe. This symbol tells the program to first do one thing and then do something else to the result of the first. Hence, we can perform several data manipulations in one line. For example:


~~~
chowVals <- filter(dat, Diet=="chow") %>% select(Bodyweight)
~~~
{: .r}

In the second task, we no longer have to specify the object we are editing since it is whatever comes from the previous call. 

Also, note that if `dplyr` receives a `data.frame` it will return a `data.frame`. 

~~~
class(dat)
~~~
{: .r}



~~~
[1] "data.frame"
~~~
{: .output}



~~~
class(chowVals)
~~~
{: .r}



~~~
[1] "data.frame"
~~~
{: .output}

For pedagogical reasons, we will often want the final result to be a simple `numeric` vector. To obtain such a vector with `dplyr`, we can apply the `unlist` function which turns `lists`, such as `data.frames`, into `numeric` vectors:


~~~
chowVals <- filter(dat, Diet=="chow") %>% select(Bodyweight) %>% unlist
class( chowVals )
~~~
{: .r}



~~~
[1] "numeric"
~~~
{: .output}


To do this in R without `dplyr` the code is the following:


~~~
chowVals <- dat[ dat$Diet=="chow", colnames(dat)=="Bodyweight"]
~~~
{: .r}








