class Solution:
    def findMin(self, nums: List[int]) -> int:
        n = len(nums)
        l=0
        r=n-1

        while l<r:
            mid = (l+r)//2
            
            if nums[mid] > nums[r]:
                l=mid+1
            else:
                r=mid
        return nums[l]

































    #     l = 0
    #     r= len(nums)-1
        
    #     while l<r:
    #         mid = (l+r)//2
    #         if nums[mid]>nums[r]:
    #             l=mid+1
    #         else:
    #             r=mid
    #     return nums[l]     
    # # https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/discuss/158940/Beat-100%3A-Very-Simple-(Python)-Very-Detailed-Explanation
        