require 'pry'

module WhatsOnNetflix
    class ComingSoon < List
        
        @@all = []
        
        def self.all
            @@all
        end
        
        def self.list_url
            "http://www.whats-on-netflix.com/coming-soon/#{self.current_month}-#{self.current_year}-new-netflix-releases/"
        end
        
        def self.list
            puts "= = = = ="
            puts "Coming Soon on Netflix"
            puts "= = = = ="
            self.print_list
        end
    end
end