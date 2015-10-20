class CreateChangeColumnNames < ActiveRecord::Migration
  def change
    create_table :change_column_names do |t|
      rename_column :posts, :name, :user_name
      rename_column :tags, :category, :name
    end
  end
end
