class CashRegister
  
  attr_accessor :total, :discount, :items, :last_item


  def initialize(discount = 0)
    @total = 0            #dont need total as an argument because it starts 
                          #at 0
    @discount = discount  #kind of like a default
    @items = []           #returns an array containing all items that have been added
  end 
  

  
  def add_item(title, price, quantity = 1) #accepts optional quantity (default)
                                          #at minimum its going to be 1 - 0 times whatever is always 0
    @total += price * quantity 
    self.last_item = price
    quantity.times {@items << title}  
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
    @total -= last_item
  end   
end 
