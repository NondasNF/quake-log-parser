$file_directory = "games.log"
class Main
    def readFile
        if File.exist?($file_directory)
            quakeLog = File.open($file_directory) 
            quakeLog_data = quakeLog.readline;
            quakeLog.close
            return puts quakeLog_data
        else
            return puts "Files does not exist on main directory"
        end
    end
end
Main.new.readFile