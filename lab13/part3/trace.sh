#!/bin/bash

traceroute -n theindependent.sg > traceroute2.txt
awk '{print $1 "\t" $2}' traceroute2.txt > trace2.txt
diff trace1.txt trace2.txt > diff.txt
cat diff.txt
