require 'rspec'
require 'wizard'
require 'wand'

describe Wizard do 


end


describe Wand do 
  it 'initializes Wand objects' do
    sample_wand = Wand.new("Maple","Griffin","14")
    sample_wand.should be_an_instance_of Wand
  end 
end