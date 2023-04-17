class Vendor

  attr_reader :name, :inventory
  def initialize(name)
    @name      = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory[item] == nil
      return 0
    else
      @inventory[item]
    end
  end

  def stock(item, quantity)
    if @inventory[item] == nil
      @inventory[item] = quantity
    else
      amount = @inventory[item]
      @inventory[item] = (amount + quantity)
    end
  end

  def potential_revenue
    @inventory[item].map do |inv|
      inv * @inventory[price]
    end
  end
end