a = "my-short-string"
def camelize(str)
    p str.length
    0.upto (str.length-1) do |i|
        if str[i] == "-"
           str[i+1] = str[i+1].upcase
        end
    end
    p str.delete("-")
end
camelize(a)