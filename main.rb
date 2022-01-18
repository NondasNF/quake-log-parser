$file_directory = "games.log"
class Main
    def readFile
        if File.exist?($file_directory)
            quakeLog_firstLine = File.open($file_directory, &:readline) 
            return puts quakeLog_firstLine
        else
            return puts "Files does not exist on main directory"
        end
    end
end
Main.new.readFile
