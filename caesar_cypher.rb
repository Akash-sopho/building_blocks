print "enter string : "
string = gets.chomp
print "enter key : "
key = gets.chomp

def caesar_cypher(string , key)
  result = ""
  string.each_byte do |l|
    shiftedl = l + (key.to_i)%26
    if (l.between?(97,122))
      (shiftedl).between?(97,122) ? l = shiftedl : l = (97 + shiftedl - 123)
    elsif (l.between?(65,90))
      (shiftedl).between?(65,90) ? l = shiftedl : l = (65 + shiftedl - 90)
    end
    result += l.chr
  end
  result
end

puts caesar_cypher(string,key)
