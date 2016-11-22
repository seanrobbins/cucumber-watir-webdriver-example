require_relative 'shopping_page'

class MensOuterwearPage < ShoppingPage
  def initialize(browser)
    super
    @url = @base_url + "list/mens_outerwear"
    @expected_element = @browser.h1(:text => "Men's Outerwear")
    @total_items = 16
  end

  def item_titles
    [   
      "Men's Tech Shell Full-Zip",
      "Anvil L/S Crew Neck - Grey",
      "Green Flex Fleece Zip Hoodie",
      "Android Nylon Packable Jacket",
      "YouTube Ultimate Hooded Sweatshirt",
      "Grey Heather Fleece Zip Hoodie",
      "Vastrm Hoodie",
      "Recycled Plastic Bottle Hoodie - Green",
      "Rowan Pullover Hood",
      "Men's Voyage Fleece Jacket",
      "Eco-Jersey Chrome Zip Up Hoodie",
      "Android Colorblock Hooded Pullover",
      "Tri-blend Full-Zip Hoodie",
      "Fleece Full-Zip Hoodie",
      "Jacquard-Knit Full-Zip Fleece",
      "YouTube Unisex Flex Fleece Zip Hoodie"
      ]   
  end 
end

def mens_outerwear_page
  @mens_outerwear_page || MensOuterwearPage.new(@browser)
end
