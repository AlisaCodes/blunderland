class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.string :story
      t.string :url

      t.timestamps
    end
  end
end
