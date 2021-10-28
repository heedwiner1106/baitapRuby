print "Input: "
input = gets.chomp
char = 0
num = 0
0.upto input.length-1 do |i|
    case input[i].downcase
    when ("a".."z")
        char += 1
    when ("0".."9")
        num += 1
    end
end
p "So chu cai la: #{char}"
p "So chu so la: #{num}"