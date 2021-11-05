print "Input: "
gmail = gets.chomp
username = ""
0.upto gmail.length-1 do |i|
    if gmail[i] == "@"
        username = gmail[0..(i-1)]
    end
end
p "User name: #{username}"
