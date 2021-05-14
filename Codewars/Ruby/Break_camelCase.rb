#Complete the solution so that the function will break up camel casing,
#using a space between words.

#Example
#{}"camelCasing"  =>  "camel Casing"
#{}"identifier"   =>  "identifier"
#{}""             =>  ""

def solution(string)
  result = ""
  string.each_char do |char|
    if char == char.upcase
      result += " "
      result += char
    else
      result += char
    end
  end
  result
end

puts solution('camelCasing') #'camel Casing')
puts solution('camelCasingTest') #'camel Casing Test'
