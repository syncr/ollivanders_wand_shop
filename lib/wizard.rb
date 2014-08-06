class Wizard
  attr_accessor(:wisdom, :intelligence, :honesty)

  def initialize(wisdom, intelligence, honesty)
    @wisdom = wisdom #instance variable
    @intelligence = intelligence
    @honesty = honesty
    # save
  end

  def calculate_wisdom(color)
    @wisdom = color.sum
  end

end 

# print Wizard.calculate_wisdom("Yellow")