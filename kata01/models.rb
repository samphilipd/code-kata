# Although Dave Thomas most likely has a Ruby interpreter running permanently
# in his head, and thus can do this kata without coding anything, I unfortunately
# have not reached this level of enlightened skill yet.
#
# As Paul Graham says, artists have canvas and we have text editors.
# The code IS the medium. So I will mock up some code models to explore
# these pricing ideas.

class Product
  attr_accessor :price
  attr_accessor :name

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class ShoppingCart
  def initialize(*products)
    @products = []
    add(*products) if products
  end

  def add(*products)
    products.each do |product|
      @products << product
    end
    self
  end
end

beans = Product.new('beans', 0.99)
steak = Product.new('steak', 3.99)

my_cart = ShoppingCart.new
my_cart.add(beans, steak)

# TODO ShoppingCart#total_price
