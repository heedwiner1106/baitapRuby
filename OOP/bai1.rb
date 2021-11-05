class Rectangle
    attr_accessor :width , :height
    def func_not_para
        print "Input width: "
        @width = gets.chomp.to_i
        print "Input height: "
        @height = gets.chomp.to_i
    end
    def func_with_para width, height
        @width = width
        @height = height
    end
    def get_width
        @width
    end
    def get_height
        @height
    end
    def set width, height
        @width = width
        @height = height
    end
    def dientich
        return @width*@height
    end
    def chuvi
        return (@width+@height)*2
    end
end
a = Rectangle.new 
#a.set 23,30
#a.func_not_para
a.func_with_para 1,2
p a.get_height
p a.get_width
p a.dientich
p a.chuvi