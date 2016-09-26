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
        
        titles = html.css("div.netflix-list").text
        split = titles.split("NETFLIX OCTOBER 2016 LAST CALL")
        @coming_soon = split[0]
        @leaving_soon = split[1].gsub!("LEAVING OCTOBER /[0-9]/", "")
    end
        
        
    end
end
