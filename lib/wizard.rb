class Wizard
  def initialize(name)
    @name = name
    @wisdom
    @intelligence
    @loyalty
  end

  def Wizard.score
    @score 
  end

  def Wizard.wisdom
    @wisdom
  end

  def Wizard.intelligence
    @intelligence 
  end

  def Wizard.loyalty
    @loyalty
  end

  def Wizard.calculate_wisdom(wisdom_input)
    @wisdom = wisdom_input.sum
  end

  def Wizard.calculate_intelligence(intelligence_input)
    @intelligence = intelligence_input.sum
  end

  def Wizard.calculate_loyalty(loyalty_input)
    @loyalty = loyalty_input.sum
  end

end 

# newWizard = Wizard.new("Mikey")
# print newWizard.name
# print Wizard.calculate_wisdom("Yellow")