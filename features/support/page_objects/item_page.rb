require_relative './page'

class ItemPage < Page
  def initialize(browser)
    super(browser)
    @expected_element = add_to_cart_button
  end

  def heading
    @browser.div(:id => "content").h1
  end

  def add_to_cart_button
    @browser.button(:text => "Add to Cart")
  end
end

def item_page
  @item_page ||= ItemPage.new(@browser)
end
