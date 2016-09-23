# CLI interface

module WhatsOnNetflix
    class CLI
        attr_accessor:list, :item
        def initialize
            @list = ""
            @item = ""
            puts "Welcome to What's On Netflix!"
        end
        
        ### CLI bits and pieces
        
        def list_available_commands
            puts ""
            puts "Available commands are: today, coming-soon, leaving-soon, and exit."
            puts ""
        end
        
        def list_options
            puts "= = = = = = = = = = = = = = ="
            puts "Enter a number to learn more, or back to see a different list."
            @item = gets.strip
        end
        
        def item_options
            puts "= = = = = = = = = = = = = = ="
            puts "Enter list to see the list again."
            @item = gets.strip
        end
        
        ### Actual Data
        
        def list_coming_soon
            puts ""
            puts "Coming Soon on Netflix"
            puts ""
            puts "1. Princess Diaries (2001)"
            puts "2. X-Men (1999)"
            puts "3. Firefly - Season 2 (2017)"
            puts ""
            list_options
            case
            when @item == "1"
                puts ""
                puts "Princess Diaries (2001) - Comedy - Starring Anne Hathaway, Julie Andrews"
                puts ""
                puts "This girl is a princess and she does stuff and Julie Andrews is a boss."
                puts ""
                item_options
            when @item == "2"
                puts ""
                puts "X-Men (1999) - Sci-fi - Starring Hugh Jackman, Anna Paquin"
                puts ""
                puts "Mutants doing mutant stuff. Ian McKellan is in this movie."
                puts ""
                item_options
            when @item == "3"
                puts ""
                puts "Firefly (2001) - Sci-fi - Starring Gina Rodriguez, Alan Tudyk"
                puts ""
                puts "Sci-fi cult show by that guy who does all the good sci-fi shows."
                item_options
            when @item == "list"
                @list = "coming-soon"
            when @item == "back"
                @list = ""
            end
        end
        
        def list_leaving_soon
            puts ""
            puts "Leaving Soon from Netflix"
            puts ""
            puts "1. Nothing (1956)"
            puts "2. Ever (1843)"
            puts "3. I miss Doctor Who (2012)"
            puts ""
            list_options
            case
            when @item == "1"
                puts ""
                puts "Nothing (1956) - Documentary - Starring James Franco"
                puts ""
                puts "This documentary about James Franco's mind is a critical darling."
                puts ""
                item_options
            when @item == "2"
                puts ""
                puts "Ever (1843) - Sci-fi - Starring Willy Wonka"
                puts ""
                puts "A older film from before the technical invention of film."
                puts ""
                item_options
            when @item == "3"
                puts ""
                puts "I Miss Doctor Who (2016) - Drama - Starring my living room"
                puts ""
                puts "I just really wish Doctor Who was still on Netflix."
                puts ""
                item_options
            when @item == "list"
                @list = "leaving-soon"
            when @item == "back"
                @list = ""
            end
        end
        
        def list_today
            puts ""
            puts "Added Today on Netflix"
            puts ""
            puts "1. I'm (1988)"
            puts "2. Tired (2016)"
            puts "3. Of making lists - Season 5 (2016)"
            puts ""
            list_options
            case
            when @item == "1"
                puts ""
                puts "I'm (1988) - Documentary - Starring self"
                puts ""
                puts "This is a fake movie because I'm tired of making up plot summaries."
                puts ""
                item_options
            when @item == "2"
                puts ""
                puts "Tired (2016) - True Crime - starring my bed"
                puts ""
                puts "Seriously ready to get on with the interesting part here."
                puts ""
                item_options
            when @item == "3"
                puts ""
                puts "Of Making Lists (2011) - TV Series - Starring Li Ul, Li Ol"
                puts ""
                puts "This is the last item on my list!"
                puts ""
                item_options
            when @item == "list"
                @list = "today"
            when @item == "back"
                @list = ""
            end
        end
        
        def start
            while @list != "exit" && @item != "exit"
                list_available_commands
                @list = gets.strip
                while @list == "coming-soon"
                    list_coming_soon
                end
                while @list == "leaving-soon"
                    list_leaving_soon
                end
                while @list == "today"
                    list_today
                end
            end
            puts "See you later!"
        end
    end
end

require_relative '../config/environment'