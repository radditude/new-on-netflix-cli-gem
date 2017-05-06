# CLI interface

module WhatsOnNetflix
    class CLI
        attr_accessor:input

        def initialize
            WhatsOnNetflix::ComingSoon.add_movies
            WhatsOnNetflix::LeavingSoon.add_movies
            @input = ""
            puts ""
            puts "============================="
            puts "Welcome to What's On Netflix!"
            puts "============================="
        end

        def start
            while !exit?
                list_available_commands

                if @input == "coming-soon"
                    WhatsOnNetflix::ComingSoon.list
                    list_options

                    while !exit? && !back?
                        if valid_number?(WhatsOnNetflix::ComingSoon.all)
                          begin
                            WhatsOnNetflix::ComingSoon.item(@input)
                          rescue
                            puts ""
                            puts "Sorry, we couldn't get info for this title!"
                          end
                            item_options
                        else
                            unknown_command
                        end
                    end

                elsif @input == "leaving-soon"
                    WhatsOnNetflix::LeavingSoon.list
                    list_options

                    while !exit? && !back?
                        if valid_number?(WhatsOnNetflix::LeavingSoon.all)
                            WhatsOnNetflix::LeavingSoon.item(@input)
                            item_options
                        else
                            unknown_command
                        end
                    end

                elsif !exit?
                    unknown_command
                end
            end
            exit
        end

        ### CLI dialogue

        def exit
            puts "See you later!"
        end

        def item_options
            puts ""
            puts "---"
            puts "Options:"
            puts "enter another number from the list"
            puts "back: see a different list"
            puts "exit: exit"
            @input = gets.strip
        end

        def list_available_commands
            puts ""
            puts "---"
            puts "Options:"
            puts "coming-soon: see what's new on Netflix this month"
            puts "leaving-soon: see what's leaving Netflix this month"
            puts "exit: exit"
            puts ""
            @input = gets.strip
        end

        def list_options
            puts ""
            puts "---"
            puts "Options:"
            puts "enter a number to see more"
            puts "back: see a different list"
            puts "exit: exit"
            @input = gets.strip
        end

        def unknown_command
            puts ""
            puts "I'm sorry, I don't recognize that command."
            puts ""
            @input = gets.strip
        end

        ### CLI logic

        def exit?
            @input == "exit"
        end

        def back?
            @input == "back"
        end

        def valid_number?(array)
            @input.to_i > 0 && @input.to_i < (array.length + 1)
        end

    end
end

require_relative '../config/environment'
