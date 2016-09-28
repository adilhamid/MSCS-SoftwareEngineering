 module Enumerable
  def palindrome?
      1.upto self.size do |num|
      if self[num - 1].to_s != self[size - num].to_s
        return false
      end
    end
    return true
  end
end

puts [1,2,5,2,1].palindrome?
puts [1,2,5,1].palindrome?
puts [1,2,5,2,5].palindrome?
puts [1,2,5,2,5,1].palindrome?
hsh = {"A" => :dil, "B" => 2}
puts hsh.palindrome?             # no Error in this line 