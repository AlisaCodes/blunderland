class Tag < ActiveRecord::Base
  validates :category, :presence => true
  has_and_belongs_to_many :posts
end
