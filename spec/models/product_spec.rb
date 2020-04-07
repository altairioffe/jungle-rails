require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do

    it "is valid when :name is present" do

      @new_cat = Category.create(
        name: 'deli'
      )

      @newProd = Product.create(
        name: 'salami',
        price: 400,
        quantity: 5,
        category: @new_cat
      )
    
      expect(@newProd.name).to be_present
    end


    it "is valid when :price is present" do

      @new_cat = Category.create(
        name: 'deli'
      )

      @newProd = Product.create(
        name: 'salami',
        price: 400,
        quantity: 5,
        category: @new_cat
      )
    
      expect(@newProd.price).to be_present
    end


    it "is valid when :quantity is present" do

      @new_cat = Category.create(
        name: 'deli'
      )

      @newProd = Product.create(
        name: 'salami',
        price: 400,
        quantity: 5,
        category: @new_cat
      )
    
      expect(@newProd.quantity).to be_present
    end

    it "is valid when :category is present" do

      @new_cat = Category.create(
        name: 'deli'
      )

      @newProd = Product.create(
        name: 'salami',
        price: 400,
        quantity: 5,
        category: @new_cat
      )
    
      expect(@newProd.category).to be_present
    end

  end

end
