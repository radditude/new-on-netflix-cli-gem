# CLI interface

module WhatsOnNetflix
    class CLI
        attr_accessor:current_input
        def start
            puts "Welcome to What's On Netflix!"
            puts "Enter 'today' for today's new Netflix releases," 
            puts "'coming-soon' for a full list of what's coming to Netflix soon,"
            puts "or 'leaving-soon' for what to watch before it vanishes."
            puts "Type 'exit' to quit."
            @current_input = gets.strip
                if @current_input == "coming-soon"
                    puts "1. Princess Diaries"
                    puts "2. X-Men"
                    puts "3. Firefly - Season 4"
                elsif @current_input == "leaving-soon"
                    puts "1. Nothing"
                    puts "2. Ever"
                    puts "3. I miss Doctor Who"
                elsif @current_input == "today"
                    puts "1. I'm"
                    puts "2. Tired"
                    puts "3. Of making lists"
                elsif @current_input == "exit"
                    puts "See you later!"
                end
        end
    end
end

require_relative '../config/environment'