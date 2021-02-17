require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'

class ApartmentTest < Minitest::Test
  def setup
    @unit1 = Apartment.new({number: "A1"}, monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

  end

  def test_it_exists

    assert_instance_of Apartment, @unit1.number
  end

  def test_it_has_monthly_rent

    assert_equal 1200, @unit1.monthly_rent
  end

  def test_it_has_bedrooms

    assert_equal 1, @unit1.bedrooms
  end

  def test_it_has_a_renter
    assert_equal nil, @unit1.renter

    @unit.add_renter(renter1)

    assert_equal renter1, @unit1.renter
  end
end
