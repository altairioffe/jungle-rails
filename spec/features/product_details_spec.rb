require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js:true do


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

  scenario "Clicking on a product loads product details page" do
    visit root_path
    click_on "shirt"
    # puts. root_path.html
    # find("a[href='/products/1']").click
    # commented out b/c it's for debugging only
    save_and_open_screenshot

    expect(page).to have_content 'Description'
  end

end
