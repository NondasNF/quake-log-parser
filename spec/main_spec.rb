describe "Main" do
    context "When file exists on main directory", if: File.exist?("games.log") == true do
        it "Open and read game.log file" do
            expect(STDOUT).to receive(:puts).with("  0:00 ------------------------------------------------------------\n")
            require_relative '../main.rb'
        end
    end
    context "When file don't exists on main directory", if: File.exist?("games.log") == false do
        it "Failed to open" do
            expect(STDOUT).to receive(:puts).with("Files does not exist on main directory")
            require_relative '../main.rb'
        end
    end
end