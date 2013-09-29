class User < ActiveRecord::Base
  attr_accessible :avatar_url, :bio,
    :email, :name, :password, :password_confirmation, :username
  has_secure_password
end
