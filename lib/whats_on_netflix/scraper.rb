require 'nokogiri'
require 'open-uri'
require 'pry'

module WhatsOnNetflix
    class Scraper
    
      def self.get_html(url)
        Nokogiri::HTML(open(url))
      end
    
      def self.scrape_title_list(url)
        html = self.get_html(url)
        
        titles = []
        
        html.css("h4 + ul li").each do |title|
            titles << title.text
        end
        
        titles
      end
    


      def self.scrape_imdb_info(name)

        search_page = Nokogiri::HTML(open("http://www.imdb.com/find?s=tt&q=" + URI.escape(name)))
      
        movie_page = Nokogiri::HTML(open("http://www.imdb.com" + "#{search_page.css("td a").attribute("href").value}"))
        
        info = {}
        
        info[:plot] = movie_page.css("div.summary_text").text.strip
        info[:genre] = ""
        info[:stars] = ""
        info[:year] = ""
        
        # getting info[:genre] into a readable format
        
        movie_page.css('span[itemprop="genre"]').each do |genre|
            info[:genre].concat("| #{genre.text} |")
        end
        
        # getting info[:stars] into a readable format
        
        movie_page.css('span[itemprop="actors"]').each do |actor|
          info[:stars].concat("#{actor.text.strip} ")
        end
        
        # getting info[:year] - TV show and movie pages are formatted a little differently
        
        if movie_page.css('a[title="See more release dates"]').text.include?("TV Series")
          info[:year] = movie_page.css('a[title="See more release dates"]').text
        else
          info[:year] = movie_page.css('span#titleYear').text.strip.gsub("(", "").gsub(")", "")
        end
        
        info
      end
      
        
    end
end
