require_relative './lib/log_parser.rb'

game_parser = LogParser.new("games.log")
puts game_parser.read_line
puts game_parser.count_lines
