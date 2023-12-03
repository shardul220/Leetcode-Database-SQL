class Solution:
    def threeSum(self, nums: List[int]) -> List[List[int]]:
        res = []
        n = len(nums)
        #Bruteforce O(n^3)
        # for i in range(n):
        #     for j in range(i+1,n):
        #         for k in range(j+1,n):
        #             lst = []
        #             if nums[i]+nums[j]+nums[k]==0:
                        # srt = sorted([nums[i],nums[j],nums[k]])
                        # lst.extend(srt)
                        # if lst not in res:
                        #     res.append(lst)
        # return res
        nums = sorted(nums)
        for i in range(n):
            if i>0 and nums[i]==nums[i-1]:
                continue
            l=i+1
            r=n-1
            # target = nums[i]
            lst=[]
            while l<r:
                threesum = nums[i]+nums[l]+nums[r]
                
                if threesum<0:
                    l+=1
                elif threesum>0:
                    r-=1
                else:
                    res.append([nums[i],nums[l],nums[r]])
                    l+=1
                    while nums[l]==nums[l-1] and l<r:
                        l+=1
            
        return res

        # target = nums[i]
        #     lst = []
        #     hs = []
        #     for j in range(i+1,n):
        #         diff = -nums[j]-target 
        #         srt = sorted([diff, nums[j], nums[i]])
        #         if srt not in hs:
                    
        #             lst.extend(srt)
        #             if lst not in res:
        #                 res.append(lst)
        #             # return map[diff], j
        #         hs.append(srt)
