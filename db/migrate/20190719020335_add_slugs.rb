class AddSlugs < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :slug, :string
    add_column :categories, :slug, :string
  end
end
