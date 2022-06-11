require './tax'

class ProductPrice
  def initialize(price= 500,type= "take_out")
    @price = price
    @type = type
  end
  
  def change_tax_type
    if @type == "take_out"
      @type = "deliver"
    else
      @type = "take_out"
    end
  end

  def tax_include_price_in_japan
    if @type == "deliver"
      @price * (1 + Tax::TO_GO)
    elsif @type == "take_out"
      @price * (1 + Tax::FOR_HERE)
    end
  end
end