class AddProdetailToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :gender, :string
    add_column :users, :bandor, :string
    add_column :users, :basyo, :string
    add_column :users, :user_age, :string
  end
end
