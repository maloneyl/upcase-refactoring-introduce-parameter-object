class ShippingCalculator
  EXPRESS_CONVERSION_FACTOR = 3.33
  EXPRESS_RATE = 4.25
  NORMAL_CONVERSION_FACTOR = 6.67
  NORMAL_RATE = 2.75

  def calculate_cost(item, express=nil)
    if express
      express_shipping(item)
    else
      normal_shipping(item)
    end
  end

  private

  def express_shipping(item)
    cost = item.volume * (item.weight / EXPRESS_CONVERSION_FACTOR) * EXPRESS_RATE
    cost.round(2)
  end

  def normal_shipping(item)
    cost = item.volume * (item.weight / NORMAL_CONVERSION_FACTOR) * NORMAL_RATE
    cost.round(2)
  end
end
