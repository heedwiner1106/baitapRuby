arr = (2000..3200)
arr.each{|i|
    if i % 7 == 0 && i % 5 != 0
        print "#{i},"
    end
}