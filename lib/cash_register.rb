require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 20)
    @items = []
    @total = 0
    @discount = discount
  end

  def add_item(title, price, qty = 1)
    qty.times {@items << [title, price]}
    @total += price * qty
  end

  def apply_discount
    subtotal = @total
    self.total -= @total * (@discount / 100.0)
    total == subtotal ? "There is no discount to apply." : "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    return @items.map {|item| item[0]}
  end

  def void_last_transaction
    @total -= @items.last[1]
  end
end
