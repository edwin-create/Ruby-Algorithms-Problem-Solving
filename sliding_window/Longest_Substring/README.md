Longest Substring Without Repeating Characters
Difficulty: Medium
Time budget: 20–40 minutes (maximum 1 hour)
Language: Ruby
Problem
Given a string s, find the length of the longest substring that contains no repeating characters.

A substring must consist of consecutive characters from the original string.

Return the length of that substring.
Examples
Example 1
Input:  s = "abcabcbb"
Output: 3

Explanation: "abc" is the longest substring without repeating characters.

Example 2
Input:  s = "bbbbb"
Output: 1

Explanation: The longest substring is "b".

Example 3
Input:  s = "pwwkew"
Output: 3

Explanation: "wke" is the longest substring.

Notice that "pwke" doesn't count because its characters aren't consecutive in the original string.
Constraints
- 0 <= s.length <= 50,000
- s consists of English letters, digits, symbols and spaces.
Additional test cases
Try these too:
Input	Expected output
""	0
"a"	1
"abba"	2
"dvdf"