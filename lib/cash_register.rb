
class CashRegister


    attr_accessor :total
    attr_reader :discount, :items

    def initialize(discount=20)
        @total = 0
        @discount = discount
        @items = []

    end



    def add_item(title, price, quantity = 1)
        # accepts a title and a price and increases the total
        quantity.times do
        @items << title
        end
        @last_item = self.total
        self.total += price * quantity

    end

    def apply_discount
        if @total == 0
            "There is no discount to apply."

        else
        @total = @total - (@total * @discount.to_f/100).to_i
        "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction

        @total = @last_item
    end



end