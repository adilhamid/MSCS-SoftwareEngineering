def combine_anagrams(words)
  result = Hash.new{|hsh,key| hsh[key] = [] }
    words.each do |word1|
      value = word1.downcase
        result[value.chars.sort.join].push(value)
    end
 
 result.values.to_s

end


#example
#puts (combine_anagrams(['cArs', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']))
