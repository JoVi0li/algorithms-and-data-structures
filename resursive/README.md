# Recursive

Recursive algorithms solve a problem by solving smaller instances of the same problem. The example provided here demonstrates the recursive calculation of the factorial of a number.
The factorial of a non-negative integer n, denoted as n!, is the product of all positive integers less than or equal to n. The recursive factorial algorithm follows this logic:

Base Case: If n is 0 or 1, return 1 (base case).

Recursive Step: Otherwise, calculate n! as n times the factorial of (n-1).