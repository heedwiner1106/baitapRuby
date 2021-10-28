c = 50
h = 30
print "Input D: "
d = gets.chomp
p d
arr = []
positon = 0;
print "Q = "
0.upto d.length-1 do |i|
    if(d[i]==",")
        t = d[positon..i].to_i
        positon = i+1
        print "#{Math.sqrt((2*c*t)/h).to_i},"
    end
end
t = d[positon..(d.length-1)].to_i
print "#{Math.sqrt((2*c*t)/h).to_i}\n"