require './lib/bot_princess'
describe BotPrincess do
  include BotPrincess

  describe 'display_path_to_princess' do
    let(:m) { 3 }
    let(:grid) { [['-', '-', '-'], ['-', 'm', '-'], ['p', '-', '-']] }

    it 'returns shortest path to princess' do
      expect(display_path_to_princess(m, grid)).to eq("DOWN\nLEFT\n")
    end
  end

  describe 'return_location_values' do
    let(:row_diff) { 1 }
    let(:col_diff) { -1 }

    it 'returns path to princess based on row & column difference' do
      expect(return_location_values(row_diff, col_diff)).to eq("DOWN\nLEFT\n")
    end
  end
end
