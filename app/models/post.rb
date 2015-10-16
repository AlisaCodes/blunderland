class Post < ActiveRecord::Base
  validates :name, :title, :story, :url, :presence => true
end
