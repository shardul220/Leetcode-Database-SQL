class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        maxSum=-float('inf')
        n = len(nums)

        # for i in range(n):
        #     currentSubarray = 0
        #     for j in range(i,n):
        #         currentSubarray += nums[j]
        #         maxSum = max(currentSubarray, maxSum)
        # return maxSum

        currentSubarray = nums[0]
        maxSubarray = nums[0]

        for i in range(1,n):
            currentSubarray = max(nums[i], currentSubarray + nums[i])
            maxSubarray = max(maxSubarray ,currentSubarray)
        return maxSubarray