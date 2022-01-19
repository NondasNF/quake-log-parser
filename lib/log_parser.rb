require 'json'

class LogParser
  def initialize(file_path)
    @file_path = file_path
  end
  def read_line
      file = open_file
      if file
        line_first =  file.readline
        file.close
        line_first
      end
  end
  
  def count_lines
    file = open_file
    if file
    lines = File.foreach(file).count
    file.close
    lines_report = {@file_path =>{:lines => lines}}
    lines_report.to_json
    end
  end

  def open_file
    if File.exist?(@file_path)
      File.open(@file_path)
    else
      puts "Files does not exist on main directory"
    end
  end
end
