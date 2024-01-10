void main() {
  print(lengthOfLongestSubstring("abcabcbb"));
  print(lengthOfLongestSubstring("bbbbb"));
  print(lengthOfLongestSubstring("pwwkew"));
}

int lengthOfLongestSubstring(String s) {
  final repeated = Map<String, int>();
  int right = 0, left = 0, length = 0, maxLength = 0;

  while (right < s.length) {
    if (repeated[s[right]] == null) {
      repeated[s[right]] = right;
      right += 1;
      length = right - left;
      if (length > maxLength) maxLength = length;
    } else {
      repeated.remove(s[left]);
      left += 1;
    }
  }

  return maxLength;
}
