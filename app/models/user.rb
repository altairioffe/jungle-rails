class User < ActiveRecord::Base

  has_secure_password
  
  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email)

    if user && user.authenticate(password)
    return user
    end
 
  end



end
