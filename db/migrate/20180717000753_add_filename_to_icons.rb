class AddFilenameToIcons < ActiveRecord::Migration[5.2]
  def change
    add_column :icons, :file_name, :string
  end
end
