
class Shop
	attr_reader :milkshakes
	def initialize
    	@milkshakes = [ ]        
  	end

  	def add_milkshake(milkshake)
    	@milkshakes.push(milkshake)
  	end
=begin
  	def checkout

  		#Add each ingredients price to our total
  		@milkshakes.each do |milkshake|
    	@total_price += milkshake.price_of_milkshake
  		end
   		#return  our total price to whoever called for it
   		@total_price
  	end
=end
end

class MilkShake
	attr_reader :total_price_of_milkshake, :ingredients, :name
  def initialize(name)
    @base_price = 3
    @ingredients = [ ]   
    @name = name     
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
  	#Let's establish what our counter should be before we start adding ingredients into the mix
  	@total_price_of_milkshake = @base_price
  	#Add each ingredients price to our total
  	@ingredients.each do |ingredient|
    @total_price_of_milkshake += ingredient.price
  	end
   #return  our total price to whoever called for it
   @total_price_of_milkshake
  end
end

class Ingredient
	attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end



nizars_milkshake = MilkShake.new("nizars")
alex_milkshake = MilkShake.new("alex")
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
black_chocolate = Ingredient.new("Black Chocolate", 3)
white_chocolate = Ingredient.new("White Chocolate",1)
ShoppingCart = Shop.new

nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
alex_milkshake.add_ingredient(chocolate_chips)
alex_milkshake.add_ingredient(black_chocolate)
alex_milkshake.add_ingredient(white_chocolate)

puts nizars_milkshake.price_of_milkshake
puts alex_milkshake.price_of_milkshake

ShoppingCart.add_milkshake("nizars_milkshake")
ShoppingCart.add_milkshake("alex_milkshake")
puts ShoppingCart.milkshakes

#puts ShoppingCart.checkout