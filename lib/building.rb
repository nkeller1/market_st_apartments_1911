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
    avaiable_units = []
    @units.each do |unit|
      if unit.renter != nil
        avaiable_units << unit
      end
    end

    highest_renter = avaiable_units.map do |person|
      person.renter
    end.first
    # highest_rent = @units.map do |unit|
    #   require "pry"; binding.pry
    #     unit.monthly_rent
    # end
    # highest_rent.max
  end

end
