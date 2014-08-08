class Wand
@@store = []

  attr_accessor(:wood, :creature, :length)

  def initialize(wood, creature, length)
    @wood = wood #instance variable
    @creature = creature
    @length = length
    # save
  end

  def create_wand(wood_result, creature_result, length_result)
     wizardWand = Wand.new(wood_result, creature_result, length_result)
  end


end

#empty line for GIT