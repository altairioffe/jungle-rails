class Admin::DashboardController < ApplicationController
  username = ENV['ADMIN_NAME']
  password = ENV['ADMIN_PASS']

  # http_basic_authenticate_with name: 'username', password: 'passwor', only: [:show]
  
  def show
    @product_count = Product.all.count
    @category_count = Category.all.count

  end
end
