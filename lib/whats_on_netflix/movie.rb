module WhatsOnNetflix
    class Movie
        attr_accessor:title, :year, :genre, :stars, :plot
        @@coming_soon = []
        @@leaving_soon = []
        
        def self.coming_soon
            @@coming_soon
        end
        
        def self.leaving_soon
            @@leaving_soon
        end
        
        def self.add_movies
            self.movie_1
            self.movie_2
            self.movie_3
            self.movie_4
            self.movie_5
            self.movie_6
        end
        
        def self.movie_1
            movie = self.new
            movie.title = "Princess Diaries"
            movie.year = "2001"
            movie.genre = "comedy"
            movie.stars = "Anne Hathaway, Julie Andrews"
            movie.plot = "This girl is a princess and she does stuff and Julie Andrews is a boss."
            @@coming_soon << movie
        end
        
        def self.movie_2
            movie = self.new
            movie.title = "X-Men"
            movie.year = "1999"
            movie.genre = "Sci-fi"
            movie.stars = "Hugh Jackman, Anna Paquin"
            movie.plot = "Mutants doing mutant stuff. Ian McKellan is in this movie."
            @@coming_soon << movie
        end
        
        def self.movie_3
            movie = self.new
            movie.title = "Firefly"
            movie.year = "2001"
            movie.genre = "Sci-fi"
            movie.stars = "Gina Rodriguez, Alan Tudyk"
            movie.plot = "Sci-fi cult show by that guy who does all the good sci-fi shows."
            @@coming_soon << movie
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