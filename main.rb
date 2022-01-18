# quakeLog = File.foreach("games.log") { |line| puts line }
quakeLog = File.open("games.log") 
quakeLog_data = quakeLog.readline;
puts quakeLog_data
quakeLog.close