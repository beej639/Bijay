def stock_picker(prices)
    profit = prices[1] - prices[0]
    current_picker = [prices[0],prices[1]]
    for num1 in 0...prices.length
        for num2 in 1...prices.length
            diff = prices[num2] - prices[num1]
            if diff > profit
                profit = diff
                current_picker = [prices[num1], prices[num2]]    
            end
            
        end
    end
    return profit
    return current_picker
end

stock_picker([2,3,1,10,7,9])
