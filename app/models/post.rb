class Post < ActiveRecord::Base
  validates :name, :title, :story, :url, :presence => true
  has_and_belongs_to_many :tags
end
