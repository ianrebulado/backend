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
class Book 
  def initialize(amount, quantity, pages)
    @amount = amount
    @quantity = quantity
    @pages = pages
  end
end

class HarryPotter < Book
  attr_accessor :title, :author

  def initialize(amount, quantity, pages, title, author)
    super(amount, quantity, pages)
    @title = title
    @author = author
  end

  def display_info
    puts "Title: #{@title}"
    puts "Author: #{@author}"
    puts "Amount: #{@amount}"
    puts "Quantity: #{@quantity}"
    puts "Pages: #{@pages}"
  end
end
