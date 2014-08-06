require 'rspec'
require 'wizard'
require 'wand'

describe Wizard do 
  it 'initializes Wizard objects' do
    sample_wizard = Wizard.new("Maple","Griffin","14")
    sample_wizard.should be_an_instance_of Wizard
  end 
end


describe Wand do 
  it 'initializes Wand objects' do
    sample_wand = Wand.new("Maple","Griffin","14")
    sample_wand.should be_an_instance_of Wand
  end 
end