---
title: "Functions for FARS data manipulation and mapping"
author: "Carlos Caceres"
---

**Overview**
This is a light package, with the purpose of providing standard and easy-to-use functions to process, manipulate and map data from the *Fatality Analysis Reporting System* managed by the *US National Highway Traffic Safety Administration*.

This package deals mainly with 4 tasks when operating the FARS data: 

1. Creates a standard filename given a year of fatalities.   
2. Read file(s) with the provided filename(s).   
3. Summarize the the number of fatalities per month of the selected years.   
4. Plot the localities of incidents on a map.   

The expected output when using this package should be a map with incidents as points on a map, but other outputs can be obtained as well through auxiliary functions included on the package.  

**General Use**

*Making Maps*

The most common task is to read and map data on R, given a year of falities. For this, the function `fars_map_state()` is sufficient, provided a state code and year. State codes can be supplied as a vector.

For example, the expected output for `fars_map_state(1, 2013)` is a map  with dots of the casualties on accidents.

*Other uses*
Other functions included on the package allow to build filenames, read and summarize FARS data.   

1.*Filenames*: Allows the user to build a filename provided a year as argument, via `make_filename()` function. The returned value is a string. Example:  

```{r filename, echo=TRUE}
FARSFn::make_filename(2001)
```

2.*Read FARS data*: A function that reads FARS data to the Glob_Env given a filename, via `fars_read()`. Reads the data from the current WD.   

3.*Read FARS data of multiple years*: A function that reads FARS data to the Glob_Env given a year or a vector of years, via `fars_read_years()`. Reads the data from the current WD.

4.*Summarize FARS data*: A function that summarizes data from the FARS readed files, counting the number of casualties per month and year. Expected output is a tibble of 12*n, being n the number of years. 

##**Known Issues**
As this package is currently in development, some bugs and errors are expected to occur. Some of the known issues are:  

1.Maps not being plotted: An error is prompted : `get(dbname) : object 'stateMapEnv' not found`. This is solved by loading the *stats* package before using the `fars_map_state()` function.

2.You tell me what to fix!

**Contact**
You can contact me via GitHub whenever you want.

**Package Built in Travis-CI!** 
[![Build Status](https://travis-ci.org/Kiserian/FARSFn.svg?branch=master)](https://travis-ci.org/Kiserian/FARSFn)
