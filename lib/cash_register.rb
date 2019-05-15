require 'pry'

class CashRegister
  attr_accessor :total, :discount, :list
  
  def initialize(discount = 0) 
    @total = 0
    @discount = discount
    @list = []
    @last_transaction = 0
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    self.list.fill(title, list.length, quantity)
    @last_transaction = price
  end 
  
  def apply_discount()
    @total -= @total * (@discount*0.01)
    
    if @discount > 0  
      return "After the discount, the total comes to $#{@total.to_i}."
    else 
      return "There is no discount to apply."
    end 
  end 
  
  def items
    #returns an array containing all items that have been added
    @list 
  end 
  
  def void_last_transaction
    #subtract last transaction from total 
    @total -= @last_transaction
  end
end 
