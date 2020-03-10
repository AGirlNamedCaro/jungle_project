require 'rails_helper'

RSpec.feature "AddToCarts",  type: :feature, js: true do
# SETUP
before :each do
  @category = Category.create! name: 'Apparel'

  10.times do |n|
    @category.products.create!(
    name:  Faker::Hipster.sentence(3),
    description: Faker::Hipster.paragraph(4),
    image: open_asset('apparel1.jpg'),
    quantity: 10,
    price: 64.99
)
    end
  end

  scenario "Visit the homepage and click on add to cart" do
    # ACT
    visit root_path

    # DEBUG / VERIFY
    
    expect(page).to have_css 'article.product', count: 10
    
    within(first('article.product')) {
      
      click_on "Add"
    }
    sleep(1)
    # click_on "Details"    
    save_screenshot
    
    
  end
end
