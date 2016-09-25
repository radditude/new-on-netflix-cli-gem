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
            self.coming_soon_from_list(COMINGSOONTITLES)
        end
        
        def self.coming_soon_from_list(array)
            array.each do |entry|
                movie = self.new(entry)
                if entry.include?(" - ")
                    new_title = entry.split(" - ")
                    movie.title = new_title[0]
                else
                    new_title = entry.split(" (")
                    movie.title = new_title[0]
                end
                @@all << movie
            end
        end
        
    #    def self.clean_title(title)
    #        movie = self.new(title)
    #        if entry.include?(" - ")
    #            new_title = entry.split(" - ")
    #            movie.title = new_title[0]
    #        else
    #            new_title = entry.split(" (")
    #            movie.title = new_title[0]
    #        end
    #    end
        
    #    def self.movie_1
    #        movie = self.new
    #        movie.title = "Princess Diaries"
    #        movie.year = "2001"
    #        movie.genre = "comedy"
    #        movie.stars = "Anne Hathaway, Julie Andrews"
    #        movie.plot = "This girl is a princess and she does stuff and Julie Andrews is a boss."
    #        @@coming_soon << movie
    #    end
        
    #    def self.movie_2
    #        movie = self.new
    #        movie.title = "X-Men"
    #        movie.year = "1999"
    #        movie.genre = "Sci-fi"
    #        movie.stars = "Hugh Jackman, Anna Paquin"
    #        movie.plot = "Mutants doing mutant stuff. Ian McKellan is in this movie."
    #        @@coming_soon << movie
    #    end
        
    #    def self.movie_3
    #        movie = self.new
    #        movie.title = "Firefly"
    #        movie.year = "2001"
    #        movie.genre = "Sci-fi"
    #        movie.stars = "Gina Rodriguez, Alan Tudyk"
    #        movie.plot = "Sci-fi cult show by that guy who does all the good sci-fi shows."
    #        @@coming_soon << movie
    #    end
        
        
        
    end
end