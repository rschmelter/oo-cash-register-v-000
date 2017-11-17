
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 0)
    if quantity > 0
      @total += price * quantity
    else
      @total += price
    end
  end

    def apply_discount
      discount_percent = @discount/100.to_f
      discount_in_dollars = @total * discount_percent
      @total = @total - discount_in_dollars
      "After the discount, the total comes to $#{@total.to_i}."
    end










end
