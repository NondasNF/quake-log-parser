class Main
  def read_file
    if File.exist?("games.log")
      quakeLog_firstLine = File.open("games.log", &:readline) 
      return puts quakeLog_firstLine
    else
      return puts "Files does not exist on main directory"
    end
  end
  
end
Main.new.read_file
