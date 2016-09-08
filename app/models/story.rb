class Story < ApplicationRecord
  has_many :sentences
  has_many :comments, :as => :commentable
  belongs_to :user
  validates :name, :presence => true

end
