class User < ApplicationRecord
  has_secure_password
  has_many :stories
  has_many :sentences
  has_many :comments
  validates :password, :length => { :minimum => 5 }
  validates :name, :presence => true
end
