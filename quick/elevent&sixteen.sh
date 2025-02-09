#!/bin/bash

# Count total regular files (excluding directories)
x=$(ls -l | grep -v ^d | wc -l)

# Count total directories (lines starting with 'd' indicate directories)
y=$(ls -l | grep ^d | wc -l)

# Display the counts
echo "Total Regular Files Are : $x"
echo "Total Directory Files Are : $y"
