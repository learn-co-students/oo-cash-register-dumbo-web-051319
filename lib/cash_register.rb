require 'pry'
class CashRegister

  attr_accessor :total, :discount
  # attr_reader
  # attr_writer
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item_array = []
    @last_transaction = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    item_price = price * quantity
    self.total += item_price
    @last_transaction= price
    quantity.times do
    @item_array << item
  end
end

  def discounted_amount
    discounted_amount = (total * discount/100.to_f)
  end

  def apply_discount
    if @discount != 0
    self.total = (total - discounted_amount ).to_i
    "After the discount, the total comes to $#{self.total}."
  else "There is no discount to apply."
  end
  end

  def items
      @item_array
  end

  def void_last_transaction
    self.total -= @last_transaction
    # binding.pry
  end

end
