class Item

  attr_reader :name, :price, :stock_amount
  def initialize(item_data)
    @name  = item_data[:name]
    @price = item_data[:price]
  end

  # def stock_amount
  #   stock_amount = 0
  # end

  # def add_stock(quantity)
  #   stock_amount += quantity
  # end
end

