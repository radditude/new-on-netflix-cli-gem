module WhatsOnNetflix
    class LeavingSoon
        attr_accessor:title, :year, :genre, :stars, :plot
        @@all = []
        
        def initialize(title)
            @title = title
        end
        
        def self.all
            @@all
        end
        
        def self.add_movies
            self.movie_4
            self.movie_5
            self.movie_6
        end
        
        def self.movie_4
            movie = self.new
            movie.title = "Nothing"
            movie.year = "1956"
            movie.genre = "Documentary"
            movie.stars = "James Franco"
            movie.plot = "This documentary about James Franco's mind is a critical darling."
            @@leaving_soon << movie
        end
        
        def self.movie_5
            movie = self.new
            movie.title = "Ever"
            movie.year = "1843"
            movie.genre = "Sci-fi"
            movie.stars = "Willy Wonka"
            movie.plot = "A older film from before the technical invention of film."
            @@leaving_soon << movie
        end
        
        def self.movie_6
            movie = self.new
            movie.title = "I Miss Doctor Who"
            movie.year = "2016"
            movie.genre = "Drama"
            movie.stars = "my living room"
            movie.plot = "I just really wish Doctor Who was still on Netflix."
            @@leaving_soon << movie
        end
    end
end