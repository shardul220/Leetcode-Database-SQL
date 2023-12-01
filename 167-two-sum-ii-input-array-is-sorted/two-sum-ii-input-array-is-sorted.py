class Solution:
    def twoSum(self, numbers: List[int], target: int) -> List[int]:
        res = []
        n = len(numbers)
        # map = {}
        # for i, num in enumerate(numbers):
        #     diff = target - num
        #     if diff in map:
        #         return map[diff]+1, i+1
        #     map[num]=i

        l=0
        r=n-1
        while l<=r:
            sum = numbers[l]+numbers[r]
            if sum==target:
                return [l+1,r+1]
            
            if sum<target:
                l+=1
            else:
                r-=1
        # return 0


























            # l, r = 0, len(numbers)-1
            # while l < r:
            #     s = numbers[l] + numbers[r]
            #     if s == target:
            #         return [l+1,r+1]
            #     if s < target:
            #         l += 1
            #     if s>target:
            #         r-=1
                
        