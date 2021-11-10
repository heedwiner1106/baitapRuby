styles = ['Jazz','Blues']
styles.push("Rock-n-Roll")
if((styles.length % 2) != 0)
    i = (styles.length / 2).to_i
    styles[i] = "Classics"
end
p styles
p styles.first
styles.unshift("Rap","Reggae")
p styles