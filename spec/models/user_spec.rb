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

    it "is valid when email and name are present" do
      
      @new_user = User.create(
        name: 'tommy salami',
        email: 'tom.salam@salami.com',
        password: 'pass',
        password_confirmation: 'pass'
      )

      expect(@new_user.name && @new_user.email).to be_present
    end

    it "is valid when the password length is at least 6" do
      
      @new_user = User.create(
        name: 'tommy salami',
        email: 'tom.salam@salami.com',
        password: 'password',
        password_confirmation: 'password'
      )

      expect(@new_user.password.length).to be > 5
    end


  end

  describe '.authenticate_with_credentials' do

    it 'should log users in with the correct username and password'0=

  end


end
