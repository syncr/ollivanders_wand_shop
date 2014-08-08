require 'rspec'
require 'wizard'
require 'wand'

describe Wizard do 
  it 'initializes Wizard objects' do
    sample_wizard = Wizard.new("Mikey")
    expect(sample_wizard).to be_an_instance_of Wizard
  end 

  it 'calculates wisdom' do
    sample_wizard = Wizard.new("Mikey")
    expect(Wizard.calculate_wisdom("Yellow")).to eq(636)
  end

  it 'calculates intelligence' do
    sample_wizard = Wizard.new("Mikey")
    expect(Wizard.calculate_intelligence("Yellow")).to eq(636)
  end

  it 'calculates loyalty' do
    sample_wizard = Wizard.new("Mikey")
    expect(Wizard.calculate_loyalty("Yellow")).to eq(636)
  end

  it 'wisdom value' do
    sample_wizard = Wizard.new("Mikey")
    Wizard.calculate_wisdom("Yellow")
    expect(Wizard.wisdom).to eq(636)
  end

  it 'loyalty value' do
    sample_wizard = Wizard.new("Mikey")
    Wizard.calculate_intelligence("Yellow")
    expect(Wizard.intelligence).to eq(636)
  end

  it 'loyalty value' do
    sample_wizard = Wizard.new("Mikey")
    Wizard.calculate_loyalty("Yellow")
    expect(Wizard.loyalty).to eq(636)
  end
end


describe Wand do 
  it 'initializes Wand objects' do
    sample_wand = Wand.new("Maple","Griffin","14")
    expect(sample_wand).to be_an_instance_of Wand
  end 
end
#empty line for GIT