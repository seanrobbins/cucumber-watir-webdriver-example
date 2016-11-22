require_relative 'shopping_page'

class LadiesOuterwearPage < ShoppingPage
  def initialize(browser)
    super
    @url = @base_url + "list/ladies_outerwear"
    @expected_element = @browser.h1(:text => "Ladies Outerwear")
    @total_items = 6
  end

  def item_titles
    [
      "Ladies Modern Stretch Full Zip",
      "Ladies Colorblock Wind Jacket",
      "Ladies Voyage Fleece Jacket",
      "Ladies Pullover L/S Hood",
      "Ladies Sonoma Hybrid Knit Jacket",
      "Ladies Yerba Knit Quarter Zip"
    ]
  end 
end

def ladies_outerwear_page
  @ladies_outerwear_page ||= LadiesOuterwearPage.new(@browser) 
end

