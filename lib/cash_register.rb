
require "pry"
class CashRegister
attr_accessor :total , :discount

def initialize(discount = 0)
  @total = 0
  @discount =  discount
  @array_titles  = []
  @array_prices  = []
end

def add_item(title, price, quantity = 1)
    # @total += price
    if quantity == 1
      @total +=  price
      @array_titles << title
      @array_prices << price
    else
      @total += price * quantity
            quantity.times{@array_titles << title}
            @array_prices << price
    end

# binding.pry
end

def apply_discount

  if @discount > 0
  @total = total * ((100.0 - @discount) / 100.0)
  return "After the discount, the total comes to $#{total.to_i}."
else
  return "There is no discount to apply."
end
end


def items
    @array_titles
end

def void_last_transaction
  @total = @total - @array_prices[-1]
end



end
