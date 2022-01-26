require_relative '../../lib/log_parser'

describe 'LogParser' do
  describe '#initialize' do
    it 'raise an exception if recive invalid path' do
      expect { LogParser.new('some invalid path') }.to raise_error('Files does not exist on main directory')
    end
  end

  describe '#read_file' do
    it 'read game.log first line' do
      game_parser = LogParser.new('./spec/fixtures/game_test.log')

      response = game_parser.read_line

      expect(response).to eq("  0:00 ------------------------------------------------------------\n")
    end
  end

  describe '#count_lines' do
    it 'return json' do
      game_parser = LogParser.new('./spec/fixtures/game_test.log')

      response = game_parser.count_lines

      expect(response).to eq("{\"./spec/fixtures/game_test.log\":{\"lines\":9}}")
    end
  end
end
