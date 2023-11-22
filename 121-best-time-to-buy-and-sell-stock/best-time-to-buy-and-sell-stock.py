class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        l = len(prices)
        # maxdiff=0
        # for i in range(l-1):
        #     for j in range(i+1,l):
        #         diff = prices[j] - prices[i]
        #         if diff >maxdiff:
        #             maxdiff = diff

        # print(maxdiff)
        # return maxdiff

        minprice=float('inf')
        maxprofit=0
        for i in range(l):
            if prices[i]<minprice:
                minprice=prices[i]
            diff = prices[i]-minprice
            if diff > maxprofit:
                maxprofit = diff
        return maxprofit
