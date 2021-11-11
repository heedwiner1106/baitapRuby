class TuDien
    $TD = { 'go' => 'Đi','eat' => 'Ăn','good' => "Tốt", "good night" => "Chúc ngủ ngon"}
    $arr = $TD.to_a
    def find str
        if $TD[str]
            p "#{str}: #{$TD[str]}"
        else
            p "Can't find this word"
        end
        p "Similar word"
        0.upto ($arr.length - 1) do |i|
            if(($arr[i][0][str]) &&  $arr[i][0] != str)
                p "#{$arr[i][0]}: #{$TD[$arr[i][0]]}"
                p "---"
            end
        end
    end
end

while(1)
    print "Input: "
    input = gets.chomp
    a = TuDien.new
    a.find input
    print "Continue? (Y/N): "
    ctn = gets.chomp
    if ctn.downcase != "y"
        break
    end
end
