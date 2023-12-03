class Solution:
    def pivotIndex(self, nums: List[int]) -> int:
        
        n=len(nums)
        sumLeft = []
        sumLeft.append(0)
        l=0
        sumRight = [0]*n
        sumRight[n-1]=0
        r=0
        
        for i in range(1,n):
            l+=nums[i-1]
            sumLeft.append(l)
            
        for i in range(n-2,-1,-1):
            r+=nums[i+1]
            sumRight[i] =r
            
        for i in range(n):
            if sumLeft[i]==sumRight[i]:
                return i
        return -1