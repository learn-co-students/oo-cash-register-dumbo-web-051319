require "pry"
class CashRegister
  attr_accessor :total, :discount, :last_transation

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @last_transation = @total
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if self.discount != 0
      @total -= (self.total * self.discount) / 100
      return "After the discount, the total comes to $#{@total}."
    else
      self.discount = 0
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transation
  end

end
