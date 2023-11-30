class Solution:
    def search(self, nums: List[int], target: int) -> int:

        n = len(nums)
        l = 0
        r = n-1

        while l<=r:
            mid = (l+r)//2
            if nums[mid] == target:
                return mid
            if nums[mid]>nums[r]:   #left sorted portion
                if target>nums[mid] or target<nums[l]:
                    l=mid+1
                else:
                    r=mid-1
            else:                   #right sorted
                if target<nums[mid] or target>nums[r]:
                    r=mid-1
                else:
                    l=mid+1
        return -1
        










        # if not nums:
        #     return -1
        # low =0
        # high=len(nums)-1
        
        # while low<=high:
        #     mid = (low + high)//2
        #     if target==nums[mid]:
        #         return mid
        #     if nums[low] <= nums[mid]:       #1st half in ascending order
        #         if nums[low] <= target <= nums[mid]:
        #             high = mid-1
        #         else:
        #             low = mid+1
        #     else:
        #         if nums[mid] <= target <= nums[high]:   #2nd half in ascending order
        #             low = mid+1
        #         else:
        #             high=mid-1
        # return -1            
        
        