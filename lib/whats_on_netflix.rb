# CLI interface

module WhatsOnNetflix
    class CLI
        attr_accessor:current_input
        def initialize
            @current_input = ""
            puts "Welcome to What's On Netflix!"
        end
            
        def start
            while @current_input != "exit"
                puts "Available commands are: today, coming-soon, leaving-soon, and exit."
                puts ""
                @current_input = gets.strip
                case
                when @current_input == "coming-soon"
                    puts ""
                    puts "Coming Soon on Netflix"
                    puts ""
                    puts "1. Princess Diaries (2001)"
                    puts "2. X-Men (1999)"
                    puts "3. Firefly - Season 4 (2017)"
                    puts ""
                    puts "Enter a number to learn more, or back to see a different list."
                    @current_input = gets.strip
                    case
                    when @current_input == "1"
                        puts ""
                        puts "Princess Diaries (2001) - Comedy - Starring Anne Hathaway, Julie Andrews"
                        puts ""
                        puts "This girl is a princess and she does stuff and Julie Andrews is a boss."
                        puts ""
                        puts "Enter list to go back, or exit to leave."
                        @current_input = gets.strip
                    when @current_input == "2"
                        puts ""
                        puts "X-Men (1999) - Sci-fi - Starring Hugh Jackman, Anna Paquin"
                        puts ""
                        puts "Mutants doing mutant stuff. Ian McKellan is in this movie."
                        puts ""
                        puts "Enter list to go back, or exit to leave."
                        @current_input = gets.strip
                    when @current_input == "3"
                        puts ""
                        puts "Firefly (2001) - Sci-fi - Starring Gina Rodriguez, Alan Tudyk"
                        puts ""
                        puts "Sci-fi cult show by that guy who does all the good sci-fi shows."
                        puts ""
                        puts "Enter list to go back, or exit to leave."
                        @current_input = gets.strip
                    when @current_input == "back"
                        @current_input = "coming-soon"
                    end
                when @current_input == "leaving-soon"
                    puts ""
                    puts "Leaving Soon from Netflix"
                    puts ""
                    puts "1. Nothing (1956)"
                    puts "2. Ever (1843)"
                    puts "3. I miss Doctor Who (2012)"
                    puts ""
                    puts "Enter a number to learn more."
                    @current_input = gets.strip
                when @current_input == "today"
                    puts ""
                    puts "Added Today on Netflix"
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