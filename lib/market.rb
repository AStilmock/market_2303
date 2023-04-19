class Market

  attr_reader :name, :vendors
  def initialize(name)
    @name      = name
    @vendors = []
  end

  def add_vendors(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.flat_map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.find_all do |vendor|
      vendor.inventory[item] != 0
    end
  end

  def sorted_items_list
    @vendors.flat_map do |vendor|
      vendor.inventory.keys.map do |item|
        item.name
      end
    end.uniq.sort
  end

  def total_inventory
    total = {}
    @vendors.each do |vendor|
      vendor.inventory.each do |item, quantity|
        total[item] = Hash.new(0)
        total[item][:quantity] += quantity
        total[item][:vendors] = [vendor]
  end

end