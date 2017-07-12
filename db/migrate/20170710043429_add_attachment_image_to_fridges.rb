class AddAttachmentImageToFridges < ActiveRecord::Migration
  def self.up
    change_table :fridges do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :fridges, :image
  end
end
