class Apartment
  attr_reader :renter

  def initialize(info_hash)
    @info_hash = info_hash
    @renter = nil
  end

  def number
    @info_hash[:number]
  end

  def monthly_rent
    @info_hash[:monthly_rent]
  end

  def bathrooms
    @info_hash[:bathrooms]
  end

  def bedrooms
    @info_hash[:bedrooms]
  end

  def add_renter(renter_in)
    @renter = renter_in
  end
end
