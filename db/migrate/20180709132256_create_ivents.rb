class CreateIvents < ActiveRecord::Migration[5.2]
  def change
    create_table :ivents do |t|
      t.references :user, foreign_key: true
      t.string :address
      t.string :ivent_title
      t.text :ivent_content
      t.integer :ivent_date

      t.timestamps
    end
  end
end
