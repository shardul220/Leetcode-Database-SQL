class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        n = len(digits)
        # sum = 0
        # r=n
        # for i in range(n):
        #     sum+=10**(r-1)*digits[i]
        #     r-=1
        
        # res=sum+1
        # k=n+1
        # for i in range(n):
        #     if digits[i]!=9:
        #         k=n
        # ls = [0]*k

        # r=k
        # for i in range(k):
            
        #     digit = res//(10**(r-1))
        #     ls[i] = digit
        #     res=res%(10**(r-1))
        #     r-=1
        # return ls

        for i in range(len(digits)-1, -1, -1):
            if digits[i] == 9:
                digits[i] = 0
            else:
                digits[i] += 1
                return digits
        return [1] + digits 
        