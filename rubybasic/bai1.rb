p "Input ur password: "
a = gets.chomp
pass = []
positon = 0;
0.upto a.length-1 do |i|
    if(a[i] == ",")
        pass.push(a[positon..(i-1)])
        positon = i+1
    end
end
pass.push(a[positon..(a.length-1)])
0.upto (pass.length-1) do |j|
    aToz = false
    num = false
    aAtoZ = false
    specialC = false
    space = true
    0.upto pass[j].length-1 do |i|
        case pass[j][i]
        when ('a'..'z')
            aToz = true    
        when ('0'..'9')
            num = true
        when ('A'..'Z')
            aAtoZ = true
        when '$','#','@'
            specialC = true
        when " "
            space = false
        end
    end
    if(aToz && num && aAtoZ && specialC && space && pass[j].length < 13)
        p "Invalid password: #{pass[j]}"
    end
end