robot = [0,0]
continue = true
while(continue) do
    print "UP: "; up = gets.to_i
    print "DOWN: "; down = gets.to_i
    print "LEFT: "; left = gets.to_i
    print "RIGHT: "; right = gets.to_i
    x = up - down
    y = right -left
    robot = [robot[0]+x,robot[1]+y]
    print "Position: "
    p robot
    distance = Math.sqrt(robot[0]**2+robot[1]**2) 
    p distance.to_i
    print "Do you want to continue: (y/n)"
    ques = gets.chomp
    if ques == "y"
        continue = true
        p "Yes"
    else
        continue = false
        p "No"
        break
    end
end
