WordOccurrence
==============

WordOccurrence uses a Swift String extension to find the occurrence count of one word inside another. Created off the back of an interview problem posed on HackerRank in July 2016.

Time given: 90 minutes

### Problem criteria

* If the word parameter includes non-alphanumeric characters, -1 should be returned.
* Words must stand on their own to count. So "Word" counts as 1, but "WordWord" counts as 0.
* Any punctuation marks can essentially be treated as spaces. So "Word-word" counts as 2.
* All words are case-insensitive.

### Updates

* Added containsSubstring function to show currying.

### Links

* [HackerRank](https://www.hackerrank.com).