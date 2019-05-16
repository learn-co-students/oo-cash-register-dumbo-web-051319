require 'pry'
class CashRegister

  attr_accessor :title, :price, :quantity, :total
  attr_reader :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items_arr = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times { |item| @items_arr << title }
    @last_transaction = @total - (price * quantity)
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
      new_price = @total - (@total * @discount / 100)
      @total = new_price
      return "After the discount, the total comes to $#{new_price}."
  end

  def items
    @items_arr
  end

  def void_last_transaction
    @total = @last_transaction
    puts @total

  end


end
