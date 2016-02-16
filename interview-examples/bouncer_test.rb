require 'minitest'
require 'minitest/autorun'

class Person
  attr_accessor :age

  def initialize(age)
    self.age = age
  end

  def abilities
    stuff_you_can_do = []

    stuff_you_can_do << "Nothing" if age < 18
    stuff_you_can_do << "Vote"    if age >= 18
    stuff_you_can_do << "Drink" if age >= 21
    stuff_you_can_do << "Rental" if age >= 25

    stuff_you_can_do.join(", ")
  end
end

class BouncerTest < Minitest::Test

  def test_nothing_as_teen
    person = Person.new(16)
    assert person.abilities.include? "Nothing"
    refute person.abilities.include? "Drink"
    refute person.abilities.include? "Rental"
  end

  def test_drink_at_21
    person = Person.new(21)
    assert person.abilities.include? "Drink"
    refute person.abilities.include? "Nothing"
    refute person.abilities.include? "Rental"
  end

  def test_car_at_25
    person = Person.new(25)
    assert person.abilities.include? "Drink"
    assert person.abilities.include? "Rental"
    refute person.abilities.include? "Nothing"
  end

end
