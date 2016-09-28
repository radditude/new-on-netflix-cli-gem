# Specifications for the CLI Assessment

Specs:

- [x] Have a CLI for interfacing with the application

*The CLI class asks for input and presents a list of movies. The user is asked to choose one. Based on that input, the application presents further information on the selection. Invalid input is rejected, and the user can enter 'exit' at any time to quit.*

- [x] Pull data from an external source
        
*When the CLI class is initialized, the Scraper class pulls a list of movie titles from [whats-on-netflix.com](http://www.whats-on-netflix.com). When the user selects a particular movie, the Scraper class searches [IMDB](http://www.imdb.com/) for the movie's title, then gets the year, genre, starring cast, and plot summary from the movie's IMDB page.*

- [x] Implement both list and detail views

*After starting the application, users choose which list they'd like to see: Coming Soon, the titles being added to Netflix this month; or Leaving Soon, the titles leaving Netflix this month. Then they enter the number of a particular title to see details like plot, genre, and starring cast.*