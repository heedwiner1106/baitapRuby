a = rand(1000..9999)
a = a.to_s
p a
correct = false
times = 0
while(!correct)
    cow = 0
    bull = 0
    print "Input your number: "
    num = gets.to_s
    0.upto 3 do |i|
        if(a[i] == num[i])
            cow += 1
        else
            bull += 1
        end
    end
    p "Cow: #{cow}"
    p "Bull: #{bull}"
    times += 1
    if(cow == 4)
        print "Correct in #{times} times!"
        correct = true
        p a
    end
end