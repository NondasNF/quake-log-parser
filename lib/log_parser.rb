require 'json'

class LogParser
  def initialize(file_path)
    raise 'Files does not exist on main directory' unless File.exist? @file_path = file_path
  end

  def read_line
    File.open(@file_path, &:readline)
  end

  def parse_lines
    line_count = File.open(@file_path, &:readlines).count
    { @file_path => { lines: line_count } }.to_json
  end
end
