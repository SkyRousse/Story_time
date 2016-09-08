class Sentence < ApplicationRecord
  has_many :comments, :as => :commentable
  belongs_to :user
  belongs_to :story
  validates :content, :presence => true
  validates :image, :presence => true
end
