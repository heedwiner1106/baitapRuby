# p "Input number"
# n = gets.to_i
arr = []
1.upto n do |i|
    p "Person #{i}:"
    person = []
    print "Input name: "; 
    name = gets.chomp
    print "Input age: " ; 
    age = gets.to_i
    print "Input score: "; 
    score = gets.to_i
    person.push(name,age,score);
    arr.push(person)
end
p arr

#arr = [['Tom',19,80],['John',20,90],['Jony',17,93],['Jony',17,91],['Json',21,85]]

0.upto arr.length-2 do |i|
    (i+1).upto arr.length-1 do |j|
        if arr[j][0] < arr[i][0]
            tem = arr[i]
            arr[i] = arr[j]
            arr[j] = tem
        end
        if arr[j][0] == arr[i][0]
            if arr[j][1] < arr[i][1]
                tem = arr[i]
                arr[i] = arr[j]
                arr[j] = tem
            end
            if arr[j][1] == arr[i][1]
                if arr[j][2] < arr[i][2]
                    tem = arr[i]
                    arr[i] = arr[j]
                    arr[j] = tem
                end
            end
        end
    end
end
p arr