# CLI interface

module WhatsOnNetflix
    class CLI
        attr_accessor:input
        
        def initialize
            WhatsOnNetflix::ComingSoon.add_movies
            @input = ""
            puts "Welcome to What's On Netflix!"
        end
        
        def start
            while !exit?
                list_available_commands
                
                if @input == "coming-soon"
                    list_coming_soon
                    
                    while !exit? && !back?
                        if valid_number?(WhatsOnNetflix::ComingSoon.all)
                            list_item_coming_soon(@input)
                        else 
                            unknown_command
                        end
                    end
    
                elsif @input == "leaving-soon"
                    list_leaving_soon
                       
                    while !exit? && !back?
                        if valid_number?(WhatsOnNetflix::LeavingSoon.all)
                            list_item_leaving_soon(@input)
                        else 
                            unknown_command
                        end
                    end
                    
                elsif !exit?
                    unknown_command
                end
            end
            exit
        end
        
        ### CLI dialogue
        
        def exit
            puts "See you later!"
        end
        
        def item_options
            puts "= = = = = = = = = = = = = = ="
            puts "Enter another number, back, or exit."
            @input = gets.strip
        end
        
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
        
        def unknown_command
            puts ""
            puts "I'm sorry, I don't recognize that command."
            puts ""
            @input = gets.strip
        end
        
        ### CLI logic
        
        def exit?
            @input == "exit"
        end
        
        def back?
            @input == "back"
        end
        
        def valid_number?(array)
            @input.to_i > 0 && @input.to_i < (array.length + 1)
        end
        
        ### Printers
        
        def list_coming_soon
            puts "---"
            puts "Coming Soon on Netflix"
            puts "---"
            WhatsOnNetflix::ComingSoon.all.each_with_index do |movie, index|
                puts "#{index + 1}. #{movie.display_title}"
            end
            list_options
        end
        
        def list_item_coming_soon(input)
            movie = WhatsOnNetflix::ComingSoon.all[input.to_i - 1]
            movie.add_data_from_hash(WhatsOnNetflix::Scraper.scrape_imdb_info(movie.title))
            puts ""
            puts "#{movie.title} - #{movie.year}" 
            puts "#{movie.genre}"
            puts "Starring #{movie.stars}"
            puts ""
            puts "#{movie.plot}"
            item_options
        end
        
        def list_leaving_soon
            puts "---"
            puts "Leaving Soon from Netflix"
            puts "---"
            WhatsOnNetflix::LeavingSoon.all.each_with_index do |movie, index|
                puts "#{index + 1}. #{movie.title} (#{movie.year})"
            end
            list_options
        end
        
        def list_item_leaving_soon(input)
            movie = WhatsOnNetflix::LeavingSoon.all[input.to_i - 1]
            puts ""
            puts "#{movie.title} (#{movie.year}) - #{movie.genre} - Starring #{movie.stars}"
            puts ""
            puts "#{movie.plot}"
            item_options
        end
    
    end
end

require_relative '../config/environment'