require_relative 'page'

class Homepage < Page
  def initialize(browser)
    super
    @url = @base_url + "?dom=shady"
    @expected_element = @browser.elements(:tag_name => "shop-app", :text => "SHOP")[0]
  end

  def mens_outerwear_link
    @browser.link(:href => "/list/mens_outerwear")
  end
end

def homepage
  @homepage ||= Homepage.new(@browser)
end
