class AddDetailsToIvents < ActiveRecord::Migration[5.2]
  def change
    add_column :ivents, :music_type, :string
  end
end
