
def caesar_cipher(string, num)
  words = string.split(" ")
  new_arr = words.map {|word| cipher(word, num)}
  return new_arr.join(" ")
end

def cipher(word, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  new_word = ""
  word.each_char.with_index do |char, i|
    if char == alphabet.upcase.include?(char)
      new_char = alphabet.index(char) + num
      new_word[i] = alphabet[new_char % 26].upcase
    end

    if !alphabet.include?(char)
      new_word[i] = char
    else
      new_char = alphabet.index(char) + num
      new_word[i] = alphabet[new_char % 26].upcase
    end
  end
  return new_word
end

puts caesar_cipher("What a string!", 5)
