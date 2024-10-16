# Advent of Code 2023

Advent of Code is an annual language agnostic coding challenge consisting of 25 2-Part challenges. 1 challenge is
released each day starting on December 1st and ending on December 25th (Hence the name, Advent of Code). The 2023
challenges can be found [here](https://adventofcode.com/2023) as they are released.

> Note: These challenges were completed well after the 2023 season had finished. This project is just a fun challenge
> and an excuse for me to learn the Ruby programming language.

## Language of Choice

This year I am using [Ruby](https://www.ruby-lang.org/en/) as my language of choice. This choice was made because a
coworker of mine reminded me that the language existed, and I wanted an excuse to give it a try.

## Execution Times
A part of the fun of Advent of Code is creating not only a working solution, but one that also executes in a decent
amount of time. The timer starts on execution and stops once the result has been returned. The times from 10 runs are
then averaged to smooth out the variability that comes from processor load. All times are measured in milliseconds.

|   Challenge    | Average Time (ms) | Standard Deviation (ms) |
|:--------------:|:-----------------:|:-----------------------:|
| Day 1 - Part 1 |     3.061599      |        0.031543         |
| Day 1 - Part 2 |     3.615723      |        0.034413         |

## Repository Structure

All solutions are self-contained within directories marked with the day of the challenge. Any special dependencies are
declared in that day's README.

> Note: The timing code is not contained within the day to minimize the amount of duplicated code. 

## License

All solutions are under [GNU AGPLv3](https://choosealicense.com/licenses/agpl-3.0/).