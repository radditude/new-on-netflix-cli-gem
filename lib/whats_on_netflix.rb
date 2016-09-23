# CLI interface

module WhatsOnNetflix
    class CLI
        attr_accessor:input
        def initialize
            WhatsOnNetflix::Movie.add_movies
            @input = ""
            puts "Welcome to What's On Netflix!"
        end
        
        ### CLI bits and pieces
        
        def list_available_commands
            puts ""
            puts "Available commands are: coming-soon, leaving-soon, and exit."
            puts ""
            @input = gets.strip
        end
        
        def list_options
            puts "= = = = = = = = = = = = = = ="
            puts "Enter a number to learn more, back to see a different list."
            puts "Enter exit at any time to exit."
            @input = gets.strip
        end
        
        def item_options
            puts "= = = = = = = = = = = = = = ="
            puts "Enter another number, back, or exit."
            @input = gets.strip
        end
        
        def exit?
            @input == "exit"
        end
        
        def exit
            puts "See you later!"
        end
        
        def valid_list_command?
            @input == "coming-soon" || @input == "leaving-soon" || @input == "exit"
        end
        
        def unknown_command
            puts ""
            puts "I'm sorry, I don't recognize that command."
            puts ""
            @input = gets.strip
        end
        
        ### Actual Data
        
        def list_coming_soon
            puts "---"
            puts "Coming Soon on Netflix"
            puts "---"
            WhatsOnNetflix::Movie.coming_soon.each_with_index do |movie, index|
                puts "#{index + 1}. #{movie.title} (#{movie.year})"
            end
            list_options
        end
        
        def list_item_coming_soon(input)
            movie = WhatsOnNetflix::Movie.coming_soon[input.to_i - 1]
            puts ""
            puts "#{movie.title} (#{movie.year}) - #{movie.genre} - Starring #{movie.stars}"
            puts ""
            puts "#{movie.plot}"
            item_options
        end
        
        def list_leaving_soon
            puts "---"
            puts "Leaving Soon from Netflix"
            puts "---"
            WhatsOnNetflix::Movie.leaving_soon.each_with_index do |movie, index|
                puts "#{index + 1}. #{movie.title} (#{movie.year})"
            end
            list_options
        end
        
        def list_item_leaving_soon(input)
            movie = WhatsOnNetflix::Movie.leaving_soon[input.to_i - 1]
            puts ""
            puts "#{movie.title} (#{movie.year}) - #{movie.genre} - Starring #{movie.stars}"
            puts ""
            puts "#{movie.plot}"
            item_options
        end
        
        def start
            while !exit?
                list_available_commands
                while !exit? && @input != "back"
                    if @input == "coming-soon"
                        list_coming_soon
                           # list_item_coming_soon(@input)
                    elsif @input == "leaving-soon"
                        list_leaving_soon
                           # list_item_leaving_soon(@input)
                    else
                        unknown_command
                    end
                end
            end
            exit
        end
    end
end

require_relative '../config/environment'