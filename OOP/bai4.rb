class ThiSinh
    attr_accessor :sbd, :hoten, :diachi, :mucuutien
    def set_ThiSinh sbd, hoten, diachi, mucuutien
        @sbd = sbd
        @hoten = hoten
        @diachi = diachi
        @mucuutien = mucuutien
    end
end

class KhoiA < ThiSinh
    attr_accessor :toan, :ly, :hoa
    def initialize toan,ly,hoa
        @toan = toan
        @ly = ly
        @hoa = hoa
    end
end

class KhoiB < ThiSinh
    attr_accessor :toan, :hoa, :sinh
    def initialize toan,hoa,sinh
        @toan = toan
        @sinh = sinh
        @hoa = hoa
    end
end

class KhoiC < ThiSinh
    attr_accessor :van, :su, :dia
    def initialize van,su,dia
        @van = van
        @su = su
        @dia = dia
    end
end
$arr = []
class TuyenSinh
    def add_ThiSinh
        print "So bao danh: "
        sbd = gets.chomp.to_s
        print "Ten: "
        hoten = gets.chomp.to_s
        print "Dia chi: "
        diachi = gets.chomp.to_s
        print "Muc uu tien: " 
        mucuutien = gets.chomp.to_s
        print "Khoi thi: (A/B/C)"
        khoithi = gets.chomp.to_s.upcase
        if(sbd.empty? || hoten.empty? || diachi.empty? || mucuutien.empty? || !(["A","B","C"].include? khoithi))
            p "Sai thong tin, moi nhap lai: "
            add_ThiSinh
        else
            if(khoithi == "A")
                p "Khoi A!"
                print "Toan: "
                toan = gets.chomp.to_i
                print "Ly: "
                ly = gets.chomp.to_i
                print "Hoa: "
                hoa = gets.chomp.to_i
                
                newTS = KhoiA.new(toan,ly,hoa)
                newTS.set_ThiSinh(sbd,hoten,diachi,mucuutien)
                $arr.push(newTS)
            elsif(khoithi == "B")
                p "Khoi B!"
                print "Toan: "
                toan = gets.chomp.to_i
                print "Hoa: "
                hoa = gets.chomp.to_i
                print "Sinh: "
                sinh = gets.chomp.to_i
                
                newTS = KhoiA.new(toan,hoa,sinh)
                newTS.set_ThiSinh(sbd,hoten,diachi,mucuutien)
                $arr.push(newTS)
            else
                p "Khoi C!"
                print "Van: "
                van = gets.chomp.to_i
                print "Su: "
                su = gets.chomp.to_i
                print "Dia: "
                dia = gets.chomp.to_i
                
                newTS = KhoiA.new(van,su,dia)
                newTS.set_ThiSinh(sbd,hoten,diachi,mucuutien)
                $arr.push(newTS)
            end
        end
    end

    def show_infor
        if($arr.length == 0)
            p "Chua co thong tin!"
        end
        0.upto $arr.length-1 do |i|
            print "So bao danh : #{$arr[i].sbd}; "
            print "Ten : #{$arr[i].hoten}; "
            print "Dia chi : #{$arr[i].diachi}; "
            print "Muc uu tien : #{$arr[i].mucuutien}; "
            if($arr[i].class == KhoiA)
                p "Khoi A!"
                print "Toan: #{$arr[i].toan}; "
                print "Ly: #{$arr[i].ly}; "
                print "Hoa: #{$arr[i].hoa}; "
                
            elsif($arr[i].class == KhoiB)
                p "Khoi B"
                print "Toan: #{$arr[i].toan}; "
                print "Hoa: #{$arr[i].hoa}; "
                print "Sinh: #{$arr[i].sinh}; "
            else
                p "Khoi C"
                print "Van: #{$arr[i].van}; "
                print "Su: #{$arr[i].su}; "
                print "Dia: #{$arr[i].dia}; "
            end
            print " \n"
        end
    end

    def find_with_sbd
        print "Nhap sbd: "
        sbd = gets.chomp.to_s
        0.upto $arr.length-1 do |i|
            if(sbd == $arr[i].sbd)
                print "So bao danh : #{$arr[i].sbd}; "
                print "Ten : #{$arr[i].hoten}; "
                print "Dia chi : #{$arr[i].diachi}; "
                print "Muc uu tien : #{$arr[i].mucuutien}; "
                if($arr[i].class == KhoiA)
                    p "Khoi A!"
                    print "Toan: #{$arr[i].toan}; "
                    print "Ly: #{$arr[i].ly}; "
                    print "Hoa: #{$arr[i].hoa}; "
                    
                elsif($arr[i].class == KhoiB)
                    p "Khoi B"
                    print "Toan: #{$arr[i].toan}; "
                    print "Hoa: #{$arr[i].hoa}; "
                    print "Sinh: #{$arr[i].sinh}; "
                else
                    p "Khoi C"
                    print "Van: #{$arr[i].van}; "
                    print "Su: #{$arr[i].su}; "
                    print "Dia: #{$arr[i].dia}; "
                end
                print " \n"
            end
        end
    end
    def quit
        $continue = false
    end
end
$continue = true
while($continue)
    thisinh = TuyenSinh.new
    print "\n"
    p " ================ "
    p "Menu"
    p "1. Them thi sinh"
    p "2. Hien thi danh sach thi sinh"
    p "3. Tim kiem theo so bao danh"
    p "4. Thoat"
    print "Nhap (1|2|3|4): "
    choose = gets.chomp.to_s
    case choose
    when "1"
        p "1. Them thi sinh"
        thisinh.add_ThiSinh
    when "2"
        p "2. Hien thi danh sach thi sinh"
        thisinh.find_with_sbd
    when "3"
        p "3. Tim kiem theo so bao danh"
        thisinh.show_infor
    when "4"
        p "4. Thoat"
        thisinh.quit
    end
    p "Press to continue"
    abcde = gets
end