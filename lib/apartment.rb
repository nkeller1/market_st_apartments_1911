class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms, :renter

  def initialize(apartment_specs, renter = nil)
    @number = apartment_specs[:number]
    @monthly_rent = apartment_specs[:monthly_rent]
    @bathrooms = apartment_specs[:bathrooms]
    @bedrooms = apartment_specs[:bedrooms]
    @renter = renter
  end

  def add_renter(renter)

  end
end
