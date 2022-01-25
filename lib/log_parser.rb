# frozen_string_literal: true

require 'json'

class LogParser
  def initialize(file_path)
    raise 'Files does not exist on main directory' unless File.exist? @file_path = file_path
  end

  def read_line
    file = File.open(@file_path)
    line_first = file.readline
    file.close
    line_first
  end

  def parse_lines
    file = File.open(@file_path)
    lines = File.foreach(file).count
    file.close
    lines_report = { @file_path => { lines: lines } }
    lines_report.to_json
  end
end
