def bubble_sort(array)
    for i in 1...array.length
        for j in 0...array.length
            if array[i] < array[j]
            temp = array[i]
            array[i] = array[j]
            array[j] = temp
            end
        end
    end
    return array
end

bubble_sort([8,4,5,3,9])
