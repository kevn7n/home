class Building
  attr_reader :units

  def initialize
    @units = []
    @rented_units = []
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
    # total_rent = @units.sum(0){|sum,x| sum + unit.monthly_rent} ## I tried 'sum'
    total_rent = 0
    @units.each do |unit|
      total_rent += unit.monthly_rent
    end
    total_rent.to_f / @units.count
  end

  def rented_units
    # @rented_units = @units.map do |unit|
    #   unit.renter != nil
    # end  #map?
    @units.each do |unit|
      @rented_units << unit if unit.renter != nil
    end
    @rented_units
  end

  def renter_with_highest_rent
     occupied = []
     @units.each do|unit|
       occupied << unit if unit.renter != nil}
     end
     highest = occupied[0]
     occupied.each do |unit|
       if unit.monthly_rent > highest.monthly_rent
         highest = unit
       end
     end
     highest.renter
   end
end
