class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        d = []
        n = len(nums)
        #Bruteforce O(n^2)
        # for i in range(n):
        #     if nums[i] not in d:
        #         d.append(nums[i])
        #     else:
        #         return True
        # return False

        #Sorting O(nlogn)
        # nums= sorted(nums)
        # i=0
        # j=1
        # while j < n:
        #     if nums[i]==nums[j]:
        #         return True
        #     i+=1
        #     j+=1
        # return False

        #Hashmap
        dic = {}
        for i in range(n):
            if nums[i] not in dic:
                dic[nums[i]] = i
            else:
                return True
        return False

        