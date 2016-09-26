require 'pry'

module WhatsOnNetflix
    class ComingSoon
        attr_accessor:display_title, :title, :year, :genre, :stars, :plot
        @@all = []
        
        
        COMINGSOONTITLES = ["Princess Diaries (2016)", "X-Men (1999)", "Firefly - Season 2 (2001)"]
        COMINGSOONDATA = [
            [:title => "Princess Diaries", :year =>"2001", :genre => "Comedy", :stars => "Anne Hathaway, Julie Andrews", :plot => "This girl is a princess and she does stuff and Julie Andrews is a boss."],
            [:title => "X-Men", :year =>"1999", :genre => "Sci-fi", :stars => "Hugh Jackman, Anna Paquin", :plot => "Mutants doing mutant stuff. Ian McKellan is in this movie."],
            [:title => "Firefly", :year =>"2001", :genre => "Sci-fi", :stars => "Gina Rodriguez, Alan Tudyk", :plot => "Sci-fi cult show by that guy who does all the good sci-fi shows."]
            ]
            
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
        
        def self.add_data_from_hash(hash)
            movie = self.all.find { |flick| flick.title == hash[:title]}
            movie.year = hash[:year]
            movie.genre = hash[:genre]
            movie.stars = hash[:stars]
            movie.plot = hash[:plot]
        end
        
    end
end