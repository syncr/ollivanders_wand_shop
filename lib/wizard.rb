class Wizard
  attr_accessor(:name)

  def initialize(name)
    @name = name
    # @wisdom = wisdom #instance variable
    # @intelligence = intelligence
    # @honesty = honesty
    # save
  end


  # def self.create(name, wisdom, intelligence, honesty)
  #   wizard = Wizard.new(name, nil, nil, nil)
    
  # end

  def calculate_wisdom(wisdom_input)
    @wisdom = wisdom_input.sum
  end

  def calculate_intelligence(intelligence_input)
    @intelligence = intelligence_input.sum
  end

 def calculate_loyalty(loyalty_input)
    @intelligence = loyalty_input.sum
  end

end 

# newWizard = Wizard.new("Mikey")
# print newWizard.name
# print Wizard.calculate_wisdom("Yellow")