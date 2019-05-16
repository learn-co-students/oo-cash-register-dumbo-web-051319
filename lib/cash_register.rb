require 'pry'

class CashRegister

attr_accessor :total, :discount, :items, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

def add_item(title, price, quantity = 1)
  @total += price * quantity
  self.last_item = price
  quantity.times { @items << title }
end

def apply_discount
  if self.discount > 0
    @total -= @total * discount / 100
    "After the discount, the total comes to $#{@total}."
  else
   "There is no discount to apply."
  end
end

def void_last_transaction
  @total -= @last_item
end


end
