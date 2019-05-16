class HottestHotSauce::CLI

    attr_accessor :name, :description

    def call
      puts ""
      puts "Thank You For Your Interest In Hot Sauce"
      menu
    end

    def list_sauces
      HottestHotSauce::Sauce.all.each do |list|
          puts "#{list.name}"
      end
    end

    def menu
      HottestHotSauce::Scraper.new.scrape_sauces
        puts "Please type list to see the Hot Sauce Choices or type exit: "
        input = ""
        input = gets.strip.downcase
        while input != "exit"

        if input == "list"
          list_sauces

        puts "Please type the number you are interested in or type Winner!"
        input = ""
        input = gets.strip.downcase
      HottestHotSauce::Scraper.new.scrape_descriptions

        if input.to_i-1 <= HottestHotSauce::Sauce.all.size
          sauce = HottestHotSauce::Sauce.all[input.to_i-1]
          puts "#{sauce.description}"

     puts ""
     puts "type list to see more or exit"

     input = gets.strip

     if input.downcase == "list"
       list_sauces
     elsif input.downcase == "exit"
       puts "Thanks for visiting my project."
       exit
      end
      end
    end
   end
 end

end
