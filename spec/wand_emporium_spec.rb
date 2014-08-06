require 'rspec'
require 'wizard'
require 'wand'

describe Wizard do 
  it 'initializes Wizard objects' do
    sample_wizard = Wizard.new(10,10,10)
    expect(sample_wizard).to be_an_instance_of Wizard
  end 

  it 'calculates wisdom' do
    sample_wizard = Wizard.new("Yellow", 10, 10)
    expect(sample_wizard.calculate_wisdom("Yellow")).to eq(636)
  end
end


describe Wand do 
  it 'initializes Wand objects' do
    sample_wand = Wand.new("Maple","Griffin","14")
    expect(sample_wand).to be_an_instance_of Wand
  end 
end
#empty line for GIT