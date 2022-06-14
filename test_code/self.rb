class Animal
  def initialize (type)
    @type= type
  end
  def name
    @name
  end
  def name=(val)
    @name = val
  end 

end

taro = Animal.new("human")

taro.name="taro"

puts taro.name