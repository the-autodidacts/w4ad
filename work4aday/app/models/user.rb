class User < ActiveRecord::Base
  has_secure_password

  has_many :jobpostings
  validates :password_digest, presence: true
  validates :email, uniqueness: true
end
