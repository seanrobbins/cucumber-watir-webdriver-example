require_relative './page'

class CheckoutPage < Page
  def initialize(browser)
    super(browser)
    @expected_element = place_order_button
  end

  def account_email_field
    @browser.text_field(:id => "accountEmail")
  end

  def account_phone_field
    @browser.text_field(:id => "accountPhone")
  end

  def ship_address_field
    @browser.text_field(:id => "shipAddress")
  end

  def ship_city_field
    @browser.text_field(:id => "shipCity")
  end

  def ship_state_field
    @browser.text_field(:id => "shipState")
  end

  def ship_zip_field
    @browser.text_field(:id => "shipZip")
  end

  def ship_country_select_list
    @browser.select_list(:id => "shipCountry")
  end

  def credit_card_name_field
    @browser.text_field(:id => "ccName")
  end

  def credit_card_number_field
    @browser.text_field(:id => "ccNumber")
  end

  def expiry_month_select_list
    @browser.select_list(:id => "ccExpMonth")
  end

  def expiry_year_select_list
    @browser.select_list(:id => "ccExpYear")
  end

  def cvv_field
    @browser.text_field(:id => "ccCVV")
  end

  def place_order_button
    @browser.button(:value => "Place Order")
  end

  def submit_delivery_and_payment_details
    account_email_field.set "test@testing.com"
    account_phone_field.set "0123456789"
    ship_address_field.set "1 Test Place"
    ship_city_field.set "Testville"
    ship_state_field.set "TN"
    ship_zip_field.set "34567"
    ship_country_select_list.select_value "US"
    credit_card_name_field.set "Mr T Tester"
    credit_card_number_field.set "4111111111111111"
    expiry_month_select_list.select_value "01"
    expiry_year_select_list.select_value Time.now.year + 1
    cvv_field.set "111"
    place_order_button.click
  end
end

def checkout_page
  @checkout_page ||= CheckoutPage.new(@browser)
end
