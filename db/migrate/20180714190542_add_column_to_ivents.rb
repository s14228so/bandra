class AddColumnToIvents < ActiveRecord::Migration[5.2]
  def change
    add_column :ivents, :select_people, :string
    add_column :ivents, :people_name, :string
  end
end
