arr = [0,1,2,3,4,5,625,65,23,2345,5434,4,5,6]
a = 100
b = 10000
def filterRangeInPlace arr,a,b
    i = 0
    while(true)
        if(arr[i]<a || arr[i] > b)
            arr.delete(arr[i])
        else
            i += 1
        end
        if i == arr.length
            break
        end
    end
    p "#{a} <= #{arr} <= #{b}"
end
filterRangeInPlace arr,a,b