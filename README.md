# Uncommon Stack Overflow in Hack Recursive Function

This repository demonstrates an uncommon stack overflow error that can occur in Hack due to uncontrolled recursion.  The provided code implements a recursive factorial function. While seemingly straightforward, it can easily lead to a stack overflow if given a large enough input value.

## Problem

The `foo` function recursively calculates the factorial.  Without proper handling of potential infinite recursion (large inputs), it leads to a stack overflow. The Hack compiler doesn't detect this issue at compile-time, making it a runtime problem that can be difficult to debug.

## Solution

The solution involves implementing a check to avoid extremely deep recursion. This can be done by adding an upper limit to the input or by switching to an iterative approach to calculate factorials.