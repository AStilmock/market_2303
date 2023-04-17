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
      vendor.inventory.include?(item)
    end
  end
end