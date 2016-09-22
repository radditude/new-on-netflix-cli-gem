# CLI interface

module WhatsOnNetflix
    class CLI
        attr_accessor:current_input
        def start
            @current_input = ""
            puts "Welcome to What's On Netflix!"
            while @current_input != "exit"
                puts "Available commands are: today, coming-soon, leaving-soon, and exit."
                puts ""
                @current_input = gets.strip
                if @current_input == "coming-soon"
                    puts ""
                    puts "1. Princess Diaries (2001)"
                    puts "2. X-Men (1999)"
                    puts "3. Firefly - Season 4 (2002)"
                    puts ""
                    puts "Enter a number to learn more."
                    @current_input = gets.strip
                elsif @current_input == "leaving-soon"
                    puts ""
                    puts "1. Nothing (1956)"
                    puts "2. Ever (1843)"
                    puts "3. I miss Doctor Who (2012)"
                    puts ""
                    puts "Enter a number to learn more."
                    @current_input = gets.strip
                elsif @current_input == "today"
                    puts ""
                    puts "1. I'm (1988)"
                    puts "2. Tired (2016)"
                    puts "3. Of making lists - Season 5 (2016)"
                    puts ""
                    puts "Enter a number to learn more."
                    @current_input = gets.strip
                end
            end
            puts "See you later!"
        end
    end
end

require_relative '../config/environment'