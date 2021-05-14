#The goal of this exercise is to convert a string to a new string where each
#character in the new string is "(" if that character appears only once in the
#original string, or ")" if that character appears more than once in the original
#string. Ignore capitalization when determining if a character is a duplicate.

#Examples

#"din"      =>  "((("
#"recede"   =>  "()()()"
#"Success"  =>  ")())())"
#"(( @"     =>  "))(("

def duplicate_encode(word)
  #word.downcase.char.map { |char| word.downcase.count(char) > 1 ? letters = ')' : letters = '('}.join
  count = Hash.new{0}
  result = ""
  word.downcase.each_char { |chr| count[chr] += 1 }

  word.downcase.each_char do |c|
    if count[c] > 1
      result += ")"
    else
      result += "("
    end
  end
  result
end

puts duplicate_encode("Hello") #"(())("
