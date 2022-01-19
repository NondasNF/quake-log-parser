class Main
  def read_file
    if File.exist?("games.log")
      quakeLog_firstLine = File.open("games.log", &:readline) 
      puts quakeLog_firstLine
    else
      puts "Files does not exist on main directory"
    end
  end
  
end
Main.new.read_file
