## We can use different methods to isolate the offenders:

1. First Method (easy): Just sort the values in the nuerical column using bash

        sort -k2 -n -t, loadavg.csv
      Where,        
        -k1 sorts by column 1.
        -n sorts numerically instead of lexicographically (so "11" will not come before "2,3...").
        -t, sets the delimiter (what separates values in your file) to , since your file is comma-separated.
