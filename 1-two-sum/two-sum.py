class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        l=len(nums)
        d = {}
        for i in range(l):
            cmp =  target - nums[i] 
            if cmp in d:
                return i, d[cmp]
            else:
                d[nums[i]]=i













        # for i in range(l):
        #     for j in range(i+1, l):
        #         if nums[i]+nums[j] == target:
        #             return i,j

        # dict1={}
        # for i in range(l):
            
        #     compliment = target-nums[i]
        #     if compliment in dict1 and dict1[compliment] != i:
        #         return i, dict1[compliment]
        #     dict1[nums[i]] = i

        # for j in range(l):
        #     compliment = target-nums[j]
        #     if compliment in dict1 and dict1[compliment] != j:
        #         return j, dict1[compliment]




        # map = {}
        # for i, num in enumerate(nums):
        #     diff = target - num
        #     if diff in map:
        #         return map[diff], i
        #     map[num]=i
        