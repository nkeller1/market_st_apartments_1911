class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    total_rent = @units.sum do |unit|
      unit.monthly_rent
    end
    (total_rent.to_f / @units.count.to_f).round(1)
  end

  def renter_with_highest_rent
    highest_rent = @units.max_by do |unit|
      require "pry"; binding.pry
      unit.monthly_rent
    end
  end

end
