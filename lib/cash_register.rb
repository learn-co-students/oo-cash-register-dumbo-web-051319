require 'pry'
class CashRegister
  attr_accessor :total, :discount


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items =[]
    @last_transaction = []

  end

def add_item(title, price, quantity=1 )
  item = {}
  item[:title] = title
  item[:price] = price
  item[:quantity] = quantity
  # self.title += price * quantity
  @items << item
  self.total += price * quantity
  #the value of last_transaction
  @last_transaction = price * quantity

  end

  def apply_discount

    if discount > 0
      dollar_discount = total * (discount.to_f / 100)
      @total = @total - dollar_discount

       "After the discount, the total comes to $#{@total.to_i}."

    elsif discount == 0
       "There is no discount to apply."

    end
  end

  #binding.pry
  def items
    item_name = []
    @items.each do |item|
      # for item in items
      for qty in 1..item[:quantity]
        puts item_name << item[:title]
      #  item_name << item[:quantity]  #returns ["eggs", 1, "tomato", 3]
     end
    end
    item_name
  end

 def void_last_transaction
   #subtract the last_transaction value from the total
   self.total = self.total - @last_transaction
end
end
