class Solution:
    def maxArea(self, height: List[int]) -> int:
        n = len(height)
        maxArea = -1
        # Bruteforce
        # for i in range(n):
        #     for j in range(i-1, -1, -1):
        #         area = (i-j)*min(height[j], height[i])
        #         maxArea = max(area, maxArea)
        # return maxArea

        # Two pointers
        l=0
        r=n-1
        while l<r:
            area = (r-l)*min(height[l], height[r])
            maxArea = max(area, maxArea)

            if height[r]>height[l]:
                l+=1
            else:
                r-=1
        return maxArea



        