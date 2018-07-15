class AddNamaeToIvents < ActiveRecord::Migration[5.2]
  def change
    add_column :ivents, :bandivent_mei, :string
  end
end
