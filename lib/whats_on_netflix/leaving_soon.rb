module WhatsOnNetflix
    class LeavingSoon < List
       @@all = []
        
        def self.all
            @@all
        end
        
        def self.list_url
            "http://www.whats-on-netflix.com/leaving-soon/titles-leaving-netflix-in-#{self.current_month}-#{self.current_year}/"
        end
        
        def self.list
            puts "= = = = ="
            puts "Leaving Soon from Netflix"
            puts "= = = = ="
            self.print_list
        end
    end
end