class AddTwoFactorColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pin, :string
    add_column :users, :phone, :string
  end
end
