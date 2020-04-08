require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js:true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'


      @category.products.create!(
        name:  'shirt',
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    

  end

  scenario "cart is empty on page load" do
    visit root_path

    # commented out b/c it's for debugging only
    # save_and_open_screenshot

    expect(page).to have_content 'My Cart (0)'
  end

  scenario "Clicking add to cart increases cart by 1" do
    visit root_path
    click_on "Add"

    # commented out b/c it's for debugging only
    # save_and_open_screenshot

    expect(page).to have_content 'My Cart (1)'
  end

end
