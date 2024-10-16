# Day 1

The premise of the day is to parse calibration values from a document and add them together. Each line in the document
contained a single value ie: `tsgbzmgbonethreedrqzbhxjkvcnm3` contains either 33 or 13 depending on the parse method.

## Part 1

Only digits are consided to be part of the value. Reading left to right, the first digit is the 10's place and reading
right to left, the first digit is the 1's place. IE: `tsgbzmgbonethreedrqzbhxjkvcnm3` would be 33.

### Execution Time

| Average Time (ms) | Standard Deviation (ms) |
|:-----------------:|:-----------------------:|
|     3.061599      |        0.031543         |

## Part 2

Numbers that are spelled out are now included ie: one, two, three, etc. IE: `tsgbzmgbonethreedrqzbhxjkvcnm3` would
be 13.

### Execution Time

| Average Time (ms) | Standard Deviation (ms) |
|:-----------------:|:-----------------------:|
|     3.615723      |        0.034413         |

## Notes

Normally I would convert text to lowercase before comparing to avoid case sensitivity issues, but since the input file
is already entirely lowercase, and speed is a factor, I chose to skip the case conversion to improve speed.