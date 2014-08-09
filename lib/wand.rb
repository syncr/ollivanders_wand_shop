class Wand
  @@store = []
  @@wood_array = ["Acacia", "Alder", "Apple", "Ash", "Aspen", "Beech", "Birch", "Blackthorn", "Black Walnut", "Cedar", "Cherry", "Chestnut", "Cypress", "Dogwood", "Ebony", "Elder", "Elm", "Fir", "Hawthorn", "Hazel", "Holly", "Hornbeam", "Ivy", "Larch", "Laurel", "Mahogany", "Maple", "Oak", "Pear", "Pine", "Poplar", "Redwood", "Reed", "Rosewood", "Rowan", "Silver lime", "Spruce", "Sycamore", "Vine", "Walnut", "Willow", "Yew"]
  @@core_array = ["Dragon heartstring","Phoenix feather","Unicorn tail hair","Veela hair","Thestral tail hair","Troll whisker","Coral","Dragon heartstring","Phoenix feather","Unicorn tail hair","Veela hair","Kneazle whisker","Dittany stalk","Kelpie mane","Thestral tail hair"]

  attr_accessor :wood, :core, :length, :power

  def Wand.clear
    @@store = []
  end

  def initialize
    select_wood
    select_core
    # @wood = @wood_array.sample
    # @core = @core_array.sample
    @length = 5 + rand(9)
    @power = 1 + rand(10)
  end

  def Wand.store
    @@store
  end

  def save
    @@store << self
  end

  def select_wood
    @wood = @@wood_array.sample
  end

  def select_core
    @core = @@core_array.sample
  end

  def Wand.generate_wands
    50.times do |i|
      new_wand = Wand.new()
      new_wand.save
    end
    @@store.sort! { |a,b| b.power <=> a.power }
  end

  def Wand.deliver_wand(level)
    @@store.find {|wand| wand.power == level}
  end

end
Wand.generate_wands
