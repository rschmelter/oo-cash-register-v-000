
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  @items = []

  def add_item(item, price, quantity = 0)
    @items << item
    if quantity > 0
      @total += price * quantity
    else
      @total += price
    end
  end

    def apply_discount
        discount_percent = @discount/100.to_f
        discount_in_dollars = @total * discount_percent
        if @discount > 0
        @total = @total - discount_in_dollars
        "After the discount, the total comes to $#{@total.to_i}."
      else
        "There is no discount to apply."
      end
    end

    def items
      @items

    end










end
