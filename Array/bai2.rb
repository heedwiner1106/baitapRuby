def sumInput
    interger = true
    arr = []
    while(interger)
        input = gets.chomp
        if (input == "0" || input.to_i != 0)
            arr.push(input.to_i)
        else
            interger = false
        end
    end
    p sum = arr.sum
end
p "Sum: #{sumInput}"