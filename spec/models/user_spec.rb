require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    


    it 'is valid when new user is created with password and password_confirmation fields' do

      @new_user = User.create(
        name: 'tommy salami',
        email: 'tom.salam@salami.com',
        password: 'pass',
        password_confirmation: 'pass'
      )

      expect(@new_user.password && @new_user.password_confirmation).to be_present

    end
    
    it "is valid when password and password_confirmation fields match" do
      
      @new_user = User.create(
        name: 'tommy salami',
        email: 'tom.salam@salami.com',
        password: 'pass',
        password_confirmation: 'pass'
      )

      expect(@new_user.password).to be == (@new_user.password_confirmation) 
    end


  end




end
