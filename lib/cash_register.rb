require 'pry'

class CashRegister
    attr_accessor :total, :discount


    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @array_titles = []
        @array_prices = []
    end

    def total
        @total 
    end

    def add_item(title, price, quantity = 1)
        # @total += (price * quantity) 
        # @array_titles << title
        # @array_prices << price
        # if quantity == 1
        #     @total += price
        #     @array_titles << title
        #     @array_prices << price
        # else
            @total += price * quantity
            quantity.times{@array_titles << title}
            @array_prices << price
        # end
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."   
        else 
            new_total = @total * (@discount / 100.00)
            @total -= new_total.to_int
            "After the discount, the total comes to $#{@total}."
        end
    end

    def items
        @array_titles

    end

    def void_last_transaction
        @total = @total - @array_prices[-1]
    end
end