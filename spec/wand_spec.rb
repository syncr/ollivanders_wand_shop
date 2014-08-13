require 'rspec'
require 'wand'

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
      expect(sample_wand.select_wood).to be_a String
    end
  end

  describe 'creature selection'do
    it 'method to select core' do
      sample_wand = Wand.new()
      expect(sample_wand.select_core).to be_a String
    end
  end
end
