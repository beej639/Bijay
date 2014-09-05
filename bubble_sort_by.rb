def bubble_sort_by(array)
    for i in 1...array.length
        for j in 0...array.length
            if array[i].length < array[j].length
                temp = array[i]
                array[i] = array[j]
                array[j] = temp
            end
        end
    end
    return array
end

bubble_sort_by(["Wassup","Yo","Namaste", "Howdy"])
