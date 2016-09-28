module WhatsOnNetflix
    class List
        attr_accessor:display_title, :title, :year, :genre, :stars, :plot
        
        def initialize(display_title)
            @display_title = display_title
        end
        
        def add_data_from_hash(hash)
            self.year = hash[:year]
            self.genre = hash[:genre]
            self.stars = hash[:stars]
            self.plot = hash[:plot]
        end
        
        def self.create_from_array(array)
            array.each do |entry|
                movie = self.new(entry)
                new_title = entry.split("(")
                movie.title = new_title[0].strip
                self.all << movie
            end
        end
        
        def self.current_month
            Date::MONTHNAMES[Date.today.month].downcase
        end
        
        def self.current_year
            Date.today.year
        end
        
        def self.add_movies
            self.create_from_array(WhatsOnNetflix::Scraper.scrape_title_list(self.list_url))
        end
        
        def self.print_list
            self.all.each_with_index do |movie, index|
                puts "#{index + 1}. #{movie.display_title}"
            end
        end
        
        def self.item(input)
            movie = self.all[input.to_i - 1]
            movie.add_data_from_hash(WhatsOnNetflix::Scraper.scrape_imdb_info(movie.title))
            puts ""
            puts "---"
            puts "#{movie.title} - #{movie.year}" 
            puts "#{movie.genre}"
            puts "Starring #{movie.stars}"
            puts ""
            puts "#{movie.plot}"
            movie
        end
        
    end
end