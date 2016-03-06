class AddAttachmentPhotoToLogicians < ActiveRecord::Migration
  def self.up
    change_table :logicians do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :logicians, :photo
  end
end
