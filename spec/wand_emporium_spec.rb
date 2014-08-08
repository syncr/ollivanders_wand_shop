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

  it 'wisdom value' do
    sample_wizard = Wizard.new("Mikey")
    Wizard.calculate_wisdom("Yellow")
    Wizard.calculate_intelligence("Yellow")
    Wizard.calculate_loyalty("Yellow")
    expect(Wizard.score).to eq(1908)
  end
end


describe Wand do
  before do
    Wand.clear
  end

  describe 'store' do
    it 'initializes store array to hold generated wands' do
      expect(Wand.store).to eq([])
    end
  end

  describe 'wand initialization'do
    it 'initializes Wand objects' do
      sample_wand = Wand.new()
      expect(sample_wand).to be_a Wand
    end
  end

  describe 'wood selection'do
    it 'method to select wood' do
      sample_wand = Wand.new()
      expect(sample_wand.select_creature).to be_a String
    end
  end

  describe 'creature selection'do
    it 'method to select creature' do
      sample_wand = Wand.new()
      expect(sample_wand.select_creature).to be_a String
    end
  end
end
#empty line for GIT
