class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        res=""

        for i in range(len(strs[0])):  # iterate through characters
            for str in strs:            #iterate through each word
                if i==len(str) or str[i] != strs[0][i]:
                    return res
                
            res+=strs[0][i]
        return res
        
        

        # shortest = min(strs,key=len)
        # print(shortest)
        # for i, ch in enumerate(shortest):
        #     for stri in strs:
        #         if stri[i] != ch:
        #             return shortest[:i]
        # return shortest 