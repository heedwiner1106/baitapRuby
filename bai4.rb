transaction = true
total = 0;
while(transaction)
    positon = 0
    arr = []
    print "Input transaction: "
    tran = gets.chomp
    0.upto tran.length-1 do |i|
        if(tran[i] == " ")
            arr.push(tran[positon..(i-1)])
            positon = i + 1
        end
    end
    arr.push(tran[positon..(tran.length-1)])
    p arr
    0.upto arr.length-1 do |i|
        if(arr[i].upcase == "D")
            total += arr[i+1].to_i
        elsif arr[i].upcase == "W"
            total -= arr [i+1].to_i
        end
    end
    p "Total: #{total}"
    print "Continue trading? (Y/N): "
    continue = gets.chomp
    if continue.downcase == "y"
        transaction = true
    else 
        transaction = false
    end
end

unless transaction
    p "Total: #{total}"
end
