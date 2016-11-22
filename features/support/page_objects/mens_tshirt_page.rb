require_relative 'shopping_page'

class MensTShirtPage < ShoppingPage
  def initialize(browser)
    super
    @url = @base_url + "list/mens_tshirts"
    @expected_element = @browser.h1(:text => "Men's T-Shirts")
    @total_items = 40
  end

  def wait_for_page_to_load
    super
    Watir::Wait.until{ items_list.size == @total_items}
  end

  def item_titles
    [
      "YouTube Organic Cotton T-Shirt - Grey",
      "Inbox - Subtle Actions T-Shirt",
      "Adult Android Superhero T-Shirt",
      "Men's Vintage Heather T-Shirt",
      "Basic Black T-Shirt",
      "Local Guides T-Shirt",
      "Go Gopher T-Shirt in Teal",
      "Android Ringspun T-Shirt - Green",
      "Organic Cotton Android walking with dog T-shirt",
      "Organic Cotton T-Shirt - Red",
      "Unisex Gmail T-Shirt",
      "Android Soccer T-Shirt",
      "Basic Google T-Shirt",
      "Tri-Blend V-Neck Tee",
      "Heather Pocket Tee - Light Blue",
      "Google Now Skyline T-Shirt",
      "Tri-Blend G Logo Men's Polo",
      "Tri-Blend Leisure Shirt",
      "Wise Android T-Shirt",
      "Android Pride T-Shirt",
      "Chrome Unisex T-Shirt",
      "NY City Lights T-Shirt",
      "Omi Tech Tee",
      "YouTube S/S Triblend T-Shirt",
      "Nest T-Shirt",
      "98 Short Sleeve Tee",
      "Cardboard T-Shirt",
      "Short Sleeve Crew Neck Raglan",
      "MTV Unisex Blue T-Shirt",
      "Organic Me-To-We Tee",
      "Tri-Blend Raglan Long Sleeve",
      "Blueprint for a Better Inbox T-Shirt",
      "YouTube Player T-Shirt - Unisex",
      "G Logo White T-Shirt",
      "Android Concert T-Shirt",
      "Men's Bamboo T-Shirt",
      "Android Pay Crew Neck T-Shirt",
      "Google Maps T-Shirt",
      "Est. 98 Baseball Tee",
      "Mountain View T-Shirt"   
    ]   
  end 
end

def mens_tshirt_page
  @mens_tshirt_page || MensTShirtPage.new(@browser)
end
