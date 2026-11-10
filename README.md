# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Matthew Grundy, Fleming Lewis.
## Summary
Createcd a ripple and ring counter. Making a clock, that is semi practical and not 100,000,000 times a second
## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
You divide by 2 * count. Becuase one hertz is two clock rotations, one down from high to low, and the other back up to high from low.
So it doubling up leads to needing to half it so you get the desired outcome.
### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
The logic counts down, so it underflows back to its maximum value
### 3 - What width of ring counter would you use to get to an output of ~1KHz?
The boards are 100 MHz, so 100,000,000 Hz
1KHz = 1000 Hz
100,000,000 / 1000 = 100,000
So 100,000 flip flops, so that we you use ripple
