## We can use different methods to isolate the offenders:

1. First Method (easy): Just sort the values in the nuerical column using bash

        sort -k2 -n -r -t, loadavg.csv
        where,
        -k2 sorts by column 2.
        -n sorts numerically instead of lexicographically.
        -t, sets the delimiter (what separates values in your file) to, since your file is comma-separated","
        -r, descending sort - highest first.

2. Second method: Only print nodes with load avg >=40

        cat loadavg.csv| awk -F ',' '$2>=40'


3. Print values greater than 40 and sort from highest to lowest

        sort -k2 -n -r -t, loadavg.csv|awk -F ',' '$2>=40'> HighLoadNodes.csv
