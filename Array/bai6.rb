arr = []
while 1
    input = gets.chomp
    if input == "0" || input.to_i != 0
        arr.push(input.to_i)
    else
        break
    end
end
arr.sort!
p arr
print "Input k: "
k = gets.chomp.to_i
arr.push(k).sort!
p arr