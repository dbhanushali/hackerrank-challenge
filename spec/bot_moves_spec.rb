require './lib/bot_moves'
describe BotMoves do
  include BotMoves

  describe 'next_move' do
    let(:n) { 5 }
    let(:r) { 2 }
    let(:c) { 3 }
    let(:grid) { [['-', '-', '-'], ['-', 'm', '-'], ['p', '-', '-']] }

    it 'returns next move to reach princess' do
      expect(next_move(n, r, c, grid)).to eq("LEFT\n")
    end
  end

  describe 'get_next_move' do
    let(:row_diff) { 0 }
    let(:col_diff) { -3 }

    it 'returns next move' do
      expect(get_next_move(row_diff, col_diff)).to eq("LEFT\n")
    end
  end
end
