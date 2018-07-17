class AddAttachmentAvatarToIcons < ActiveRecord::Migration[5.2]
  def self.up
    change_table :icons do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :icons, :avatar
  end
end
