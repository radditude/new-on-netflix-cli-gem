require 'pry'

module WhatsOnNetflix
    class ComingSoon
        attr_accessor:display_title, :title, :year, :genre, :stars, :plot
        @@all = []
        
        def initialize(display_title)
            @display_title = display_title
        end
        
        def self.all
            @@all
        end
        
        def self.add_movies
            self.coming_soon_from_list(WhatsOnNetflix::Scraper.scrape_title_list("http://www.whats-on-netflix.com/coming-soon/september-2016-new-netflix-releases/"))
        end
        
        def self.coming_soon_from_list(array)
            array.each do |entry|
                movie = self.new(entry)
                new_title = entry.split("(")
                movie.title = new_title[0].strip
                @@all << movie
            end
        end
        
        def add_data_from_hash(hash)
            self.year = hash[:year]
            self.genre = hash[:genre]
            self.stars = hash[:stars]
            self.plot = hash[:plot]
        end
        
    end
end