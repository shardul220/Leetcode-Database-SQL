class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        new = [0]*len(nums)

        # #Bruteforce
        # for i,num in enumerate(nums):
        #     product = 1
        #     for j in nums:
        #         if num!=j:
        #             product *= j
        #     new.append(product)
        # return new  

        n=len(nums)
        # l = [0]*n
        # r = [0]*n

        # l[0] = 1

        # for i in range(1,n):
        #     l[i] = l[i-1]*nums[i-1]

        # r[n-1] = 1
        # for i in reversed(range(n-1)):
        #     r[i] = nums[i+1] * r[i+1]

        # for i in range(n):
        #     new[i] = l[i]*r[i]
        # return new

        res = [1]*n
        prefix=1
        for i in range(n):
            res[i] = prefix
            prefix *= nums[i]
        postfix=1
        for i in range(n-1, -1, -1):
            res[i] *= postfix
            postfix *= nums[i]
        return res


        