# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names G10: Taog Anderson & Joshua Milbourne

## Summary
We learned how to create basic memory to store data input by switches using d-latches, multiplexers, and demultiplexer.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Because with structural Verilog we can't use continuous assignment with always, which causes problems for latches.

### What is the meaning of always @(*) in a sensitivity block?
It means that the values set within must use reg and that continuous assignment is possible with no memory needed so that sequential logic is possible.

### What importance is memory to digital circuits?
It's important because it allows values to be stored and allows you to avoid using a constant signal to hold said values.
