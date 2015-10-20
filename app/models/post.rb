class Post < ActiveRecord::Base
  validates :user_name, :title, :story, :url, :presence => true
  has_many :taggings
  has_many :tags, through: :taggings

  def all_tags=(categories)
    self.tags = categories.split(",").map do |category|
      Tag.where(category: category.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:category).join(", ")
  end
end
