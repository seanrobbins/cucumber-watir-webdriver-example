module HeaderCart
  class Cart
    def initialize(browser)
      @browser = browser
      @number_of_items = 0
    end

    def cart_badge
      @browser.div(:class => "cart-badge", :text => @number_of_items.to_s)
    end

    def item_added?
      @number_of_items += 1
      cart_badge.wait_until_present
    end
  end

  def header_cart
    @cart ||= Cart.new(@browser)
  end
end
