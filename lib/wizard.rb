class Wizard
  attr_accessor(:wisdom, :intelligence, :alignment)

  def initialize(wisdom, intelligence, alignment)
    @wisdom = wisdom #instance variable
    @intelligence = intelligence
    @alignment = alignment
    # save
  end
end 
