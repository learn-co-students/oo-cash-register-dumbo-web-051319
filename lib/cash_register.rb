require "pry"
class CashRegister
  attr_accessor :total, :discount, :items
  def initialize (discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end
  def add_item(item, price, quantity = 1)
    for i in 0...quantity
      @items << item
    end
    @total = @total + price*quantity
    return total
  end
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total*(100-@discount)/100
      return "After the discount, the total comes to $#{@total}."
    end
  end
  def items
    return @items
  end
  def void_last_transaction
    @total = 0
  end
end
