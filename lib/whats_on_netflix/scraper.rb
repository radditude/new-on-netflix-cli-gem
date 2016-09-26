require 'nokogiri'
require 'open-uri'
require 'pry'


module WhatsOnNetflix
    class Scraper
        attr_accessor:coming_soon, :leaving_soon
    
    def self.get_html(url)
        Nokogiri::HTML(open(url))
    end
    
    def self.scrape_title_list(index_url)
        html = self.get_html(index_url)
        
        titles = []
        
        html.css("h2 + h4 + ul li").each do |title|
            titles << title.text
        end
        titles
    end
    
    def self.scrape_imdb_info(title)
    end
        
        
    end
end
