class RemoveColumnFromIvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :ivents, :people_name, :string
  end
end
