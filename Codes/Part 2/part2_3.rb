class String
	def palindrome?  # capture all args in case have to call super
	  	string_copy = self    				#=>  Make a copy of the string given to the method 
		string_copy.tr!('^A-Za-z0-9_', '')   	#=> We can use truncate also as it is faster than the gsub.
#		string_copy.tr!('^A-Za-z', '')  		#=> if we need to remove the numbers as well
		string_copy.downcase!					#=> use the downcase method to downcase the all the letter
		string_reverse = string_copy.reverse
		self.eql? string_reverse
    end
end

puts "ma_d_am".palindrome?
puts "malla@@m".palindrome?