class Dessert
  
  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def healthy?
    @calories < 200
  end
  
  def name(name)
    @name = name
  end
  
  def name
    return @name
  end

  def delicious?
    return true
  end
end

class JellyBean < Dessert
  
  attr_accessor :flavor

  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end
  
  def delicious?
    if @flavor == "black licorice"
      return false
    else
      return true
    end
  end

end


#example

# newbean = JellyBean.new("aasil",35,"black licorice")
# puts newbean.delicious?
# puts newbean.healthy?