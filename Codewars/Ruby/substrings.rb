def substrings(string, dictionary)
  count = {}
  dictionary.each {|word| count[word] = string.downcase.scan(/(?=#{word})/).count if string.downcase.include?(word)}
  return count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
print substrings("below", dictionary)
#{ "below" => 1, "low" => 1 }
puts
print substrings("Howdy partner, sit down! How's it going?", dictionary)
#{ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
