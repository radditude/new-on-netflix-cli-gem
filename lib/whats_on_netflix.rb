# CLI interface

module WhatsOnNetflix
    class CLI
        attr_accessor:input
        def start
            puts "Welcome to New On Netflix!"
            puts "Enter coming-soon for a list of what's coming to Netflix this month."
            puts "Enter leaving-soon for a list of what's leaving Netflix this month."
            @input = gets.strip
            if @input == "coming-soon"
                puts "1. Princess Diaries"
                puts "2. "
            end
        end
    end
end

require_relative '../config/environment'