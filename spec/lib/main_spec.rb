require_relative '../../lib/log_parser.rb'
describe 'log_parser' do
  describe '#read_file' do
    it "read game.log first line" do
      game_parser = LogParser.new("./spec/fixtures/game_test.log")
      response = game_parser.read_line
      expect(response) .to eq("  0:00 ------------------------------------------------------------\n")
    end
  end
  describe '#count_lines' do 
    it "return json" do
      game_parser = LogParser.new("./spec/fixtures/game_test.log")
      response = game_parser.count_lines
      expect(response) .to eq("{\"./spec/fixtures/game_test.log\":{\"lines\":9}}")
    end
  end
  describe '#open_file' do
    it "sucessfully opened" do
      game_parser = LogParser.new("./spec/fixtures/game_test.log")
      response = game_parser.open_file
      expect(response).not_to be(nil)
    end
    it "failed to open" do
      expect(STDOUT) .to receive(:puts) .with("Files does not exist on main directory")
      game_parser = LogParser.new("-invalid directory-")
      game_parser.open_file
    end
  end
end
