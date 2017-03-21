class User < ApplicationRecord
  has_secure_password

  #this will be the only things accessible to the user
  # attr_accessisble :email, :password, :password_confirmation

# ensures that its filled in email format
  validates_uniqueness_of :email
end
