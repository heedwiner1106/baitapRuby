arr = [1,-2,3,4,-9,-6]
i = 0
array = []
while i < arr.length
    array[i] = Array.new
    j =0
    while j < arr.length
        a = Array.new
        if j < i
            z=j
            while z <= i
                a.push(arr[z].to_i)
                z += 1
            end
            array[i].push(a)
        elsif j == i
            a.push(arr[i].to_i)
            array[i].push(a)
        elsif j > i
            z=i
            while z <= j
                a.push(arr[z].to_i)
                z += 1
            end
            array[i].push(a)
        end
        j += 1
    end
    i += 1
end
sum = 0

0.upto (array.length-1) do |i|
    0.upto ((array[i].length) -1) do |j|
        if array[i][j].sum > sum
            sum = array[i][j].sum
        end

    end
end
p sum