class User < ActiveRecord::Base
  attr_accessible :avatar_url, :bio,
    :email, :name, :password, :password_confirmation, :username
  has_secure_password

  validates :email, presence: true, uniqueness: true,
    format: { with: /^[\w\.+-]+@([\w]+\.)+[a-zA-Z]+$/ }

  validates :username, presence: true, uniqueness: true
  validates :name, presence: true
end
