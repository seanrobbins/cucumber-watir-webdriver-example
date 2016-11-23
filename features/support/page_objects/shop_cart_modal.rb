module ShopCartModal
  def self.browser(browser)
    @browser = browser
  end

  def self.wait_until_present
    checkout_link.wait_until_present
  end

  def self.checkout_link
    @browser.link(:text => "Checkout")
  end
end

def shop_cart_modal
  ShopCartModal.browser(@browser)
  ShopCartModal
end
