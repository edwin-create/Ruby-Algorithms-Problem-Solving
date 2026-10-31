Difficulty: Easy–Medium (LeetCode Medium)
Estimated time: 25–40 minutes
Topic: Arrays · Prefix and suffix products
1. Today's problem: Product of Array Except Self
Given an array of integers, return a new array where each element is the product of every other element in the original array.

Important rules:
- You cannot use division.
- Aim for an O(n) time complexity.
- The resulting array must have the same length as the input.
Examples
Example 1
input = [1, 2, 3, 4]
output = [24, 12, 8, 6]

Explanation:
- 24 = 2 × 3 × 4
- 12 = 1 × 3 × 4
- 8 = 1 × 2 × 4
- 6 = 1 × 2 × 3
Example 2
input = [-1, 1, 0, -3, 3]
output = [0, 0, 9, 0, 0]

Constraints
- Array length: 2–100,000.
- Each element is an integer between -30 and 30.
- Products will fit within a 32-bit integer.
- Do not modify the original array.
Your tests
Before implementing, think about these cases:
Input	Expected output
[2, 3]	[3, 2]
[1, 2, 3]	[6, 3, 2]
[0, 4, 5]	[20, 0, 0]
[2, 0, 3, 0]	[0, 0, 0, 0]
[-2, 3, 4]	[12, -8, -6]


My hint: Instead of calculating each element's product independently, consider what information you can accumulate as you move from left to right, and what you can accumulate moving in the opposite direction.