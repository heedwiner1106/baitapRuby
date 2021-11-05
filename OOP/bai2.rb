
class Nguoi
    attr_accessor :name, :age, :cmnd
    
    def set_person name,age,cmnd
        @age = age
        @cmnd = cmnd
        @name = name
    end
end

class KhachSan < Nguoi
    attr_accessor :type, :days, :price
    def set_hotel (type,days)
        @type = type
        @days = days
        if(@type == "A")
            @price = 500
        elsif(@type == "B")
            @price = 300
        elsif(@type == "C")
            @price = 100
        else
            @price = 0
        end
    end
end
$arr = []

def add
    print "Nhap ten: "
    name = gets.chomp.to_s
    print "Nhap tuoi: "
    age = gets.chomp.to_i
    print "Nhap loai phong (A/B/C): "
    type = gets.chomp.to_s.upcase
    print "Nhap cmnd: "
    cmnd = gets.chomp.to_s
    print "Nhap so ngay o: "
    days = gets.chomp.to_i
    if(name == "" || age == 0 || !(["A", "B", "C"].include? type) || cmnd == "" || days == 0)
        p "Ban nhap sai thong tin, moi nhap lai!"
        add
    else
        a = KhachSan.new
        a.set_person(name,age,cmnd)
        a.set_hotel(type,days)
        $arr.push(a)
    end
end

def remove
    print "Nhap cmnd: "
    cmnd = gets.chomp.to_s
    0.upto $arr.length-1 do |i|
        if($arr[i].cmnd = cmnd)
            $arr.delete_at(i)
            break
        end
    end
end

def total
    print "Nhap cmnd: "
    cmnd = gets.chomp.to_s
    0.upto $arr.length do |i|
        if($arr[i].cmnd = cmnd)
            total = $arr[i].days * $arr[i].price
            print "Khach hang #{$arr[i].name} : #{total}."
            break
        end
    end
end
continue = true
while(continue)
    print "\n"
    p " ================ "
    p "Menu"
    p "1. Them khach hang"
    p "2. Xoa khach hang"
    p "3. Tinh tien"
    p "4. Thoat"
    print "Nhap (1|2|3|4): "
    choose = gets.chomp.to_s
    case choose
    when "1"
        add
    when "2"
        remove
    when "3"
        total
    when "4"
        break
    end
    print "Tiep tuc giao dich ? (Y/N) "
    a = gets.chomp.to_s.upcase
    if(a == "Y")
        continue = true
    else
        continue = false
    end
end