class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        n = len(needle)
        k = len(haystack)
        
        i=0
        while i+n<=k:
            if needle == haystack[i:i+n]:
                return i
            i+=1
        return -1
        