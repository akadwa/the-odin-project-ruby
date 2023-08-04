def substrings(string, substrings)
  new_string = string.downcase.gsub(/[^a-z0-9\s]/i, '')
  hash = {}

  substrings.each do | search_word |
    count = new_string.scan(search_word).length
    hash[search_word] = count unless count == 0
  end

  p hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
