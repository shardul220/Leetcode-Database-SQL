class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        
        """
        t=m+n-1
        
        p1=m-1
        p2=n-1
        while p1>=0 and p2>=0:
            if nums2[p2]<=nums1[p1] :
                nums1[t]=nums1[p1]
                p1-=1
            else:
                nums1[t]=nums2[p2]
                p2-=1
            t-=1
            
        while p1>=0:
            nums1[t]=nums1[p1]
            p1-=1
            t-=1

        while p2>=0:
            nums1[t]=nums2[p2]
            p2-=1
            t-=1
            
        return nums1
        
   
        
                
        