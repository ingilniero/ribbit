class User < ActiveRecord::Base
  attr_accessible :avatar_url, :bio, :email, :name, :password_digest, :username
end
