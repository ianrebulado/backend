# encapsulation

class BookStore
  def initialize (amount, quantity)
    @amount = amount
    @quantity = quantity
  end

  def total 
    @amount * @quantity
  end
end

hp = BookStore.new(3, 10.99)
puts hp.total

# abstraction 

class BookSale
  def initialize (amount, quantity, discount=false)
    @amount = amount
    @quantity = quantity
    @discount = discount
  end

  def final_amount
    total - sale
  end

  private

  def total 
    @amount * @quantity
  end

  def sale
    discounted_price = @discount ? 2.99 : 0
  end
end

hp = BookSale.new(1, 10.99, true)
puts hp.final_amount


# Polymorphism 
class Animals
  def initialize(name, sound)
    @name = name
    @sound = sound
  end
end 

class Dog < Animals
   def introduce
    puts "I'm a dog! My name is #{@name} and I #{@sound}"
   end
end

class Cat < Animals
  def introduce
    puts "I'm a cat! My name is #{@name} and I #{@sound}"
  end
end
