class CartesianProduct
  include Enumerable

  def initialize(array1,array2)
  	@result_array = Array.new(0)
  	array1.each do |elem1|
  		array2.each do |elem2|
  			 tmp_array = Array.new(0)
       		 tmp_array.push(elem1,elem2)
        	 @result_array.push(tmp_array)  		
  		end
  	end
  	@result_array
  end

  def each
		@result_array.each { |index| yield(index) }   
	end

end
 
c = CartesianProduct.new([:a,:b], [4,5])
c.each do |elt| 
	puts elt.inspect 
end
# [:a, 4]
# [:a, 5]
# [:b, 4]
# [:b, 5]
 
c = CartesianProduct.new([:a,:b], [3])
c.each { |elt| puts elt.inspect }
# (nothing printed since Cartesian product
# of anything with an empty collection is empty