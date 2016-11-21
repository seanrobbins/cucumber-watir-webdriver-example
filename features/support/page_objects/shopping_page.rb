require_relative 'page'

class ShoppingPage < Page
  attr_accessor :total_items  

  def wait_for_page_to_load
    super
    Watir::Wait.until{ items_list.size == @total_items}
  end

  def items_list
    @browser.elements(:tag_name => "shop-list-item")
  end 
end

