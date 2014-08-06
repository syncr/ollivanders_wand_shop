class Wand
@@store = []

  attr_accessor(:wood, :creature, :length)

  def initialize(wood, creature, length)
    @wood = wood #instance variable
    @creature = creature
    @length = length
    # save
  end
end