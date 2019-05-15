require 'pry'

class CashRegister
  attr_accessor :total
  attr_accessor :discount
  attr_accessor :items
  attr_accessor :item_prices

  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
    self.items = []
    self.item_prices = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      self.items << title
      self.item_prices << price
      self.total += price
    end
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
    self.total *= (1- self.discount/100.0)
    "After the discount, the total comes to $#{self.total.round}."
    end
  end

  def void_last_transaction
    self.total -= self.item_prices[-1]
  end

end

me = CashRegister.new(20)
me.add_item("mac",1000)
me.apply_discount

binding.pry
