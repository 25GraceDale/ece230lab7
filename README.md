# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names

## Summary

We practiced implementing subtraction and signed numbers. We also learned about for loops in Verilog.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

It uses a borrow bit instead of a carry bit.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?

It necessitates multiple rounds of addition.

### 3 - What is the edge case and problem with Two’s Complement number representation?

Overflow can happen if the values are too large. We can check for this by taking the last and second-to-last carry out values and checking if they're the same or different using an XOR. If the XOR gives 1, the values are different and overflow occurred.



