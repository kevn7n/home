class Building
  attr_reader :units

  def initialize
    @units = []
    # @renters = []
  end

  def add_unit(unit_in)
    @units << unit_in
  end

  def renters
    renters = []
    @units.each do |unit|
      renters << unit.renter.name
    end
    renters
  end

  def average_rent
    total_rent = 0
    @units.each do |unit|
      total_rent += unit[:monthly_rent]
    end
    total_rent / @units.count
  end

end
