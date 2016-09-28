

def count_words(string)
	string.tr!('^A-Za-z0-9_',' ')   # if somehting like this comes as a string "i am one'master" then i will decrypt the "one'master" into two words
	word_cnt = Hash.new(0) 
	string.split.each do |nextword|
		word_cnt[nextword.downcase] += 1
	end
	return word_cnt.sort.to_h
end


#example
#puts count_words("A man, a plan, a canal  Panama")      # => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
