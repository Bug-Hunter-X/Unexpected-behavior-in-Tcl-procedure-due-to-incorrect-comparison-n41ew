# Tcl Procedure Comparison Bug
This repository demonstrates a common yet subtle bug in Tcl procedures related to incorrect string comparisons.

The `bug.tcl` file contains a procedure `myproc` that intends to compare two values and return 0 for equality and 1 for inequality.  However, it contains a flaw that leads to unexpected results in certain cases.

The `bugSolution.tcl` file provides a corrected version of the procedure.

## How to Reproduce
1. Clone this repository.
2. Run `bug.tcl` with different input values to observe the incorrect behavior.
3. Run `bugSolution.tcl` to see the corrected behavior.

## Bug Analysis
The original code uses `==` which performs string comparison. If you pass numerical values that are equal but converted to strings (e.g. "1" and "01"), it returns 1 indicating inequality, leading to an incorrect outcome.  This happens due to string comparison rather than numerical comparison.