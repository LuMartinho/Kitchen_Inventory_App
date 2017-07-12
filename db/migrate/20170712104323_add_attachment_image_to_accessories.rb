class AddAttachmentImageToAccessories < ActiveRecord::Migration
  def self.up
    change_table :accessories do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :accessories, :image
  end
end
