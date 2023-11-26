class Solution:
    def maxProduct(self, nums: List[int]) -> int:
        n = len(nums)
        res = max(nums)
        currProd = 1

        #Bruteforce
        # for i in range(n):
        #     currProd=1
        #     for j in range(i,n):
        #         currProd *= nums[j]
        #         res = max(res, currProd)
        # return res
        maxProd = 1
        minProd = 1
        for n in nums:
            tmp = maxProd*n
            maxProd = max(minProd*n, maxProd*n, n)
            minProd = min(tmp, minProd*n, n)
            res = max(res, maxProd)

        return res
            
        