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
    


      def self.scrape_imdb_info(name)

        doc = Nokogiri::HTML(open("http://www.imdb.com/find?s=tt&q=" + URI.escape(name)))
      
        link = Nokogiri::HTML(open("http://www.imdb.com" + "#{doc.css("td a").attribute("href").value}"))
        
        info = {}
        
        info[:genre] = ""
        
        link.css('span[itemprop="genre"]').each do |genre|
            info[:genre].concat("/ #{genre.text} /")
        end
        
        info[:stars] = ""
        
        link.css('span[itemprop="actors"]').each do |actor|
          info[:stars].concat("#{actor.text.strip} ")
        end
        
        info[:plot] = link.css("div.summary_text").text.strip
        
        info[:year] = ""
        if link.css('a[title="See more release dates"]').text.include?("TV Series")
          info[:year] = link.css('a[title="See more release dates"]').text
        else
          info[:year] = link.css('span#titleYear').text.strip.gsub("(", "").gsub(")", "")
        end
        
        info
      end
      
        
    end
end
