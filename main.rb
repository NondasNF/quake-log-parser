require_relative './lib/log_parser'

game_parser = LogParser.new('games.log')
puts game_parser.read_line
puts game_parser.parse_lines
