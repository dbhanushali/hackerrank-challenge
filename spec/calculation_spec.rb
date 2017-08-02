require './lib/calculation'
describe Calculation do
  include Calculation

  describe 'difference' do
    let(:princess_location) { [2, 0] }
    let(:bot_location) { [1, 1] }

    it 'returns row difference' do
      expect(difference(princess_location, bot_location, 'row')).to eq(1)
    end

    it 'returns col difference' do
      output = difference(princess_location, bot_location, 'column')
      expect(output).to eq(-1)
    end
  end

  describe 'row_location' do
    let(:diff) { 1 }

    it 'returns path to princess in row' do
      expect(row_location(diff)).to eq("DOWN\n")
    end
  end

  describe 'column_location' do
    let(:diff) { -1 }

    it 'returns path to princess in row' do
      expect(col_location(diff)).to eq("LEFT\n")
    end
  end
end
