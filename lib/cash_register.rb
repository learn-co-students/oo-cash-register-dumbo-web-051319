require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items_array, :last_transation

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items_array = []
    @last_transation = ""
  end

  def add_item(item, price, quantity = 1)
    #add_item accepts a title and a price and increases the total
    #add_item doesn't forget about the previous total
    #add_item also accepts an optional quantity
    @total += price*quantity
    # self.items_array << item
    self.items_array.fill(item, items_array.size, quantity)
    @last_transation = price
    # @items << item
  end

  def apply_discount
    #apply_discount the cash register was initialized with an employee discount applies the discount to the total price
    if discount > 0
      @total -= @total*@discount*0.01
      "After the discount, the total comes to $#{@total.to_i}."
    #apply_discount the cash register was initialized with an employee discount returns success message with updated total
    else "There is no discount to apply."
    end
  end

  def items
    @items_array
  end

  def void_last_transaction
    # subtracts the last transaction from the total (FAILED - 1)
    @total -= @last_transation

  end

end
