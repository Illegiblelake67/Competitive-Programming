# Sort Strings by Most Contiguous Vowels
#
# The goal of this Kata is to write a function that will receive an array of strings
# as its single argument, then the strings are each processed and sorted
# (in desending order) based on the length of the single longest sub-string of
# contiguous vowels ( aeiouAEIOU ) that may be contained within the string.
# The strings may contain letters, numbers, special characters, uppercase, lowercase,
# whitespace, and there may be (often will be) multiple sub-strings of contiguous vowels.
# We are only interested in the single longest sub-string of vowels within each string, in the input array.
#
# Example:
#
# str1 = "what a beautiful day today"
# str2 = "it's okay, but very breezy"
# When the strings are sorted, str1 will be first as its longest sub-string of contiguous
# vowels "eau" is of length 3, while str2 has as its longest sub-string of contiguous
# vowels "ee", which is of length 2.
#
# If two or more strings in the array have maximum sub-strings of the same length,
# then the strings should remain in the order in which they were found in the orginal array.
# */

def sort_strings_by_vowels(seq)
  vowels = "aeiouAEIOU"
  count = Hash.new{0}

  seq.each do |word|
    word.each_char do |char|
      if vowels.include?(char)
        count[word] += 1
      end
    end
  end
  result = count.sort_by {|k, v| -v}.to_h
  return result.keys
end

print sort_strings_by_vowels(["aa","eee","oo","iiii"])
puts
print sort_strings_by_vowels(["a","e","ii","ooo","u"])
puts
print sort_strings_by_vowels(["ioue","ee","uoiea"])
puts
print sort_strings_by_vowels(["high","day","boot"])
puts
print sort_strings_by_vowels(["none","uuu","Yuuuge!!"])
puts
print sort_strings_by_vowels(["AIBRH","","YOUNG","GREEEN"])
puts
print sort_strings_by_vowels(["jyn","joan","jimmy","joey"])
puts
print sort_strings_by_vowels(["uijijeoj","lkjlkjww2","iiutrqy"])
puts
print sort_strings_by_vowels(["how about now","a beautiful trio of"])
puts
print sort_strings_by_vowels(["every","bataux","is","waaaay","loose"])
puts
