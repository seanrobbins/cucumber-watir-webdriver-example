require_relative 'page'

class MensOuterwearPage < Page
  def initialize(browser)
    super
    @url = @base_url + "/list/mens_outerwear"
    @expected_element = @browser.h1(:text => "Men's Outerwear")
  end

  def wait_for_page_to_load
    super
    Watir::Wait.until{ @browser.elements(:tag_name => "shop-list-item").size == 16 }
  end

  def items_list
    @browser.elements(:tag_name => "shop-list-item")
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
