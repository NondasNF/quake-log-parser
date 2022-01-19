require 'json'

class Main
  def initialize(file_path)
    @file_path = file_path
  end
  def read_line
      file = open_file
      line_first =  file.readline
      file.close
      puts line_first
  end
  
  def count_lines
    file = open_file
    lines = File.foreach(file).count
    file.close
    lines_report = {@file_path =>{:lines => lines}}
    lines_report_json = lines_report.to_json
    puts lines_report_json
  end

  def open_file
    if File.exist?(@file_path)
      File.open(@file_path)
    else
      puts "Files does not exist on main directory"
    end
  end
end

game_parser = Main.new("games.log")
game_parser.read_line
game_parser.count_lines
