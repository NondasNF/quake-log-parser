require 'json'

class LogParser
  def initialize(file_path)
    raise 'Files does not exist on main directory' unless File.exist? @file_path = file_path
  end

  def read_line
    File.open(@file_path, &:readline)
  end

  def parse_lines
    { @file_path => { lines: count_lines } }.to_json
  end

  def count_lines
    File.open(@file_path, &:readlines).count
  end
end
