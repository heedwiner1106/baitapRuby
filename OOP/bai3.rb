class CanBo
    attr_accessor :name,:age,:sex,:address
    def set_CanBo name,age,sex,address
        @name = name
        @age = age
        if(sex == "1")
            @sex = "nam"
        elsif(sex == "2")
            @sex = "nu"
        else
            @sex ="3D"
        end
        @address = address
    end
end

class CongNhan < CanBo
    attr_accessor :bac
    def bac=(bac)
        @bac = bac 
    end
end

class KySu < CanBo
    attr_accessor :nganhdaotao
    def nganhdaotao=(nganhdaotao)
        @nganhdaotao = nganhdaotao
    end
end

class NhanVien < CanBo
    attr_accessor :congviec
    def congviec=(congviec)
        @congviec = congviec
    end
end
$arr = []
class QLCB
    def addCanBo
        print "Ten: "
        name = gets.chomp.to_s
        print "Tuoi: "
        age = gets.chomp.to_i
        print "Gioi tinh (1=nam/0=nu/*=3D): "
        sex = gets.chomp.to_s
        print "Dia chi: "
        address = gets.chomp.to_s
        print "Chuc vu: (CN/KS/NV)"
        chucvu = gets.chomp.to_s.upcase
        if(name.empty? || age == 0 || sex.empty? ||address.empty? || !(["CN","KS","NV"].include? chucvu))
            p "Sai thong tin, moi nhap lai!"
            addCanBo
        else
            if(chucvu == "CN")
                print "Nhap bac (Cong Nhan): (1-10)"
                bac = gets.chomp.to_i
                if(!((1..10).include? bac))
                    bac = 1
                end
                newCB = CongNhan.new
                newCB.set_CanBo(name,age,sex,address)
                newCB.bac = bac
                $arr.push(newCB)
            elsif(chucvu == "KS")
                print "Nhap nganh dao tao (Ky Su): "
                nganhdaotao = gets.chomp.to_s
                newCB = KySu.new
                newCB.set_CanBo(name,age,sex,address)
                newCB.nganhdaotao = nganhdaotao
                $arr.push(newCB)
            else
                print "Nhap cong viec (Nhan Vien): "
                congviec = gets.chomp.to_s
                newCB = NhanVien.new
                newCB.set_CanBo(name,age,sex,address)
                newCB.congviec = congviec
                $arr.push(newCB)
            end
        end
    end

    def find_with_name
        print "Nhap ten: "
        name = gets.chomp.to_s
        0.upto $arr.length-1 do |i|
            if(name == $arr[i].name)
                print "Ten : #{$arr[i].name}; "
                print "Tuoi : #{$arr[i].age}; "
                print "Gioi tinh : #{$arr[i].sex}; "
                print "Chuc vu : #{$arr[i].class}; "
                print "Dia chi : #{$arr[i].address}; "
                if($arr[i].class == NhanVien)
                    print "Cong viec: #{$arr[i].congviec}"
                elsif($arr[i].class == KySu)
                    print "Nganh dao tao: #{$arr[i].nganhdaotao}"
                else
                    print "Bac: #{$arr[i].bac}"
                end
                print " \n"
            end
        end
    end

    def show_infor
        0.upto $arr.length-1 do |i|
            print "Ten : #{$arr[i].name}; "
            print "Tuoi : #{$arr[i].age}; "
            print "Gioi tinh : #{$arr[i].sex}; "
            print "Chuc vu : #{$arr[i].class}; "
            print "Dia chi : #{$arr[i].address}; "
            if($arr[i].class == NhanVien)
                print "Cong viec: #{$arr[i].congviec}"
            elsif($arr[i].class == KySu)
            print "Nganh dao tao: #{$arr[i].nganhdaotao}"
            else
                print "Bac: #{$arr[i].bac}"
            end
            print " \n"
        end
    end

    def quit
        $continue = false
    end
end
$continue = true
while($continue)
    qlcb = QLCB.new
    print "\n"
    p " ================ "
    p "Menu"
    p "1. Them can bo"
    p "2. Tim kiem theo ho ten"
    p "3. Hien thi danh sach can bo"
    p "4. Thoat"
    print "Nhap (1|2|3|4): "
    choose = gets.chomp.to_s
    case choose
    when "1"
        p "1. Them can bo"
        qlcb.addCanBo
    when "2"
        p "2. Tim kiem theo ho ten"
        qlcb.find_with_name
    when "3"
        p "3. Hien thi danh sach can bo"
        qlcb.show_infor
    when "4"
        p "4. Thoat"
        qlcb.quit
    end
    p "Press to continue"
    abcde = gets
end