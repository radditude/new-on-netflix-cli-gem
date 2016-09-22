# CLI interface

module WhatsOnNetflix
    class CLI
        attr_accessor:selected_list, :selected_item, :current_input
        def initialize
            @selected_list = ""
            @selected_item = ""
            puts "Welcome to What's On Netflix!"
        end
            
        def start
            while @selected_list != "exit" && @selected_item != "exit"
                puts ""
                puts "Available commands are: today, coming-soon, leaving-soon, and exit."
                puts ""
                @selected_list = gets.strip
                while @selected_list == "coming-soon"
                    puts ""
                    puts "Coming Soon on Netflix"
                    puts ""
                    puts "1. Princess Diaries (2001)"
                    puts "2. X-Men (1999)"
                    puts "3. Firefly - Season 2 (2017)"
                    puts ""
                    puts "= = = = = = = = = = = = = = ="
                    puts "Enter a number to learn more, or back to see a different list."
                    @selected_item = gets.strip
                    case
                    when @selected_item == "1"
                        puts ""
                        puts "Princess Diaries (2001) - Comedy - Starring Anne Hathaway, Julie Andrews"
                        puts ""
                        puts "This girl is a princess and she does stuff and Julie Andrews is a boss."
                        puts ""
                        puts "= = = = = = = = = = = = = = ="
                        puts "Enter list to see the list again."
                        @selected_item = gets.strip
                    when @selected_item == "2"
                        puts ""
                        puts "X-Men (1999) - Sci-fi - Starring Hugh Jackman, Anna Paquin"
                        puts ""
                        puts "Mutants doing mutant stuff. Ian McKellan is in this movie."
                        puts ""
                        puts "= = = = = = = = = = = = = = ="
                        puts "Enter list to see the list again."
                        @selected_item = gets.strip
                    when @selected_item == "3"
                        puts ""
                        puts "Firefly (2001) - Sci-fi - Starring Gina Rodriguez, Alan Tudyk"
                        puts ""
                        puts "Sci-fi cult show by that guy who does all the good sci-fi shows."
                        puts ""
                        puts "= = = = = = = = = = = = = = ="
                        puts "Enter list to see the list again."
                        @selected_item = gets.strip
                    when @selected_item == "list"
                        @selected_list = "coming-soon"
                    when @selected_item == "back"
                        @selected_list = ""
                    end
                end
                while @selected_list == "leaving-soon"
                    puts ""
                    puts "Leaving Soon from Netflix"
                    puts ""
                    puts "1. Nothing (1956)"
                    puts "2. Ever (1843)"
                    puts "3. I miss Doctor Who (2012)"
                    puts ""
                    puts "= = = = = = = = = = = = = = ="
                    puts "Enter a number to learn more, or back to see a different list."
                    @selected_item = gets.strip
                    case
                    when @selected_item == "1"
                        puts ""
                        puts "Nothing (1956) - Documentary - Starring James Franco"
                        puts ""
                        puts "This documentary about James Franco's mind is a critical darling."
                        puts ""
                        puts "= = = = = = = = = = = = = = ="
                        puts "Enter list to see the list again."
                        @selected_item = gets.strip
                    when @selected_item == "2"
                        puts ""
                        puts "Ever (1843) - Sci-fi - Starring Willy Wonka"
                        puts ""
                        puts "A older film from before the technical invention of film."
                        puts ""
                        puts "= = = = = = = = = = = = = = ="
                        puts "Enter list to see the list again."
                        @selected_item = gets.strip
                    when @selected_item == "3"
                        puts ""
                        puts "I Miss Doctor Who (2016) - Drama - Starring my living room"
                        puts ""
                        puts "I just really wish Doctor Who was still on Netflix."
                        puts ""
                        puts "= = = = = = = = = = = = = = ="
                        puts "Enter list to see the list again."
                        @selected_item = gets.strip
                    when @selected_item == "list"
                        @selected_list = "leaving-soon"
                    when @selected_item == "back"
                        @selected_list = ""
                    end
                end
                while @selected_list == "today"
                    puts ""
                    puts "Added Today on Netflix"
                    puts ""
                    puts "1. I'm (1988)"
                    puts "2. Tired (2016)"
                    puts "3. Of making lists - Season 5 (2016)"
                    puts ""
                    puts "= = = = = = = = = = = = = = ="
                    puts "Enter a number to learn more, or back to see a different list."
                    @selected_item = gets.strip
                    case
                    when @selected_item == "1"
                        puts ""
                        puts "I'm (1988) - Documentary - Starring self"
                        puts ""
                        puts "This is a fake movie because I'm tired of making up plot summaries."
                        puts ""
                        puts "= = = = = = = = = = = = = = ="
                        puts "Enter list to see the list again."
                        @selected_item = gets.strip
                    when @selected_item == "2"
                        puts ""
                        puts "Tired (2016) - True Crime - starring my bed"
                        puts ""
                        puts "Seriously ready to get on with the interesting part here."
                        puts ""
                        puts "= = = = = = = = = = = = = = ="
                        puts "Enter list to see the list again."
                        @selected_item = gets.strip
                    when @selected_item == "3"
                        puts ""
                        puts "Of Making Lists (2011) - TV Series - Starring Li Ul, Li Ol"
                        puts ""
                        puts "This is the last item on my list!"
                        puts ""
                        puts "= = = = = = = = = = = = = = ="
                        puts "Enter list to see the list again."
                        @selected_item = gets.strip
                    when @selected_item == "list"
                        @selected_list = "today"
                    when @selected_item == "back"
                        @selected_list = ""
                    end
                end
            end
            puts "See you later!"
        end
    end
end

require_relative '../config/environment'