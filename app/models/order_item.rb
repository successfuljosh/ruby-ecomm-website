class OrderItem < ApplicationRecord
    belongs_to :order
    belongs_to :product 


    before_save :set_unit_price
    before_save :set_total

    def unit_price
        #there is a record going on
        if persisted?
            self[:unit_price]
        else
            product.price
        end
    end


    def total
        unit_price*quantity
        # quantity
    end


    private
    def set_unit_price
        self[:unit_price] = unit_price
    end

    def set_total
        #multiply by the qty in the cart
        self[:total] = total * quantity
    end
end
