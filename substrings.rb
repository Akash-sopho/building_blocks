dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

print "enter string : "
input = gets.chomp

def substrings(input, dictionary)
  result = {}
  words = input.split(" ")

  dictionary.each do |dictionary_word|
    freq = 0
    words.each do |word|
      if (word.downcase.include?(dictionary_word))
        freq += 1
        result[dictionary_word] = freq
      end
    end
  end
  result
end

puts substrings(input, dictionary)
