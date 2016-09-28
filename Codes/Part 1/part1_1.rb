

def palindrome? (string)
	string_copy = string    				#=>  Make a copy of the string given to the method 
	string_copy.tr!('^A-Za-z0-9_', '')   	#=> We can use truncate also as it is faster than the gsub.
#	string_copy.tr!('^A-Za-z', '')  		#=> if we need to remove the numbers as well
	string_copy.downcase!					#=> use the downcase method to downcase the all the letter
	string_reverse = string_copy.reverse
	string.eql? string_reverse
end

#Examples
#puts (palindrome?("1madam(??## =+++ +><::;;'//////)(*&^%$")) # false
#puts (palindrome?("A man, a plan, a canal -- Panama"))  #=> true
#puts (palindrome?("Madam, I'm Adam!"))  # => true
#puts (palindrome?("Abracadabra"))  # => false (nil is also ok)