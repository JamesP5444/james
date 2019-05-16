class HottestHotSauce::Scraper

def scrape_sauces
  @doc = Nokogiri::HTML(open("https://www.southernliving.com/seasonings/best-tasting-hot-sauce-brands"))
  @doc.css('h2')[4..8].collect do |sauce|
    new_sauce = HottestHotSauce::Sauce.new
    new_sauce.name = sauce.text.strip
    new_sauce.save
    end
  end


  def scrape_descriptions
  @doc = Nokogiri::HTML(open("https://www.southernliving.com/seasonings/best-tasting-hot-sauce-brands"))
  @doc.css('div.article-content-container').collect do |sauce|
    new_description = HottestHotSauce::Sauce.new
    new_description.description = sauce.css("p").text.strip
    new_description.save
  end
end



end





#
#   @doc.search('div.article-content-container').collect do |sauce|
#     new_sauce = HottestHotSauce::Sauce.new
#     new_sauce.name = sauce.css('h2').text.strip
#     new_sauce.description = sauce.css("p").text.strip
#     new_sauce.save
#   end
# end
# end
