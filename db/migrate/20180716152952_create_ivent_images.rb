class CreateIventImages < ActiveRecord::Migration[5.2]
  def change
    create_table :ivent_images do |t|
      t.string :image_id
      t.integer :user_id
      t.string :ivent_id
      t.string :ivent_title

      t.timestamps
    end
  end
end
