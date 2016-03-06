class AddAttachmentDrawingToLogicians < ActiveRecord::Migration
  def self.up
    change_table :logicians do |t|
      t.attachment :drawing
    end
  end

  def self.down
    remove_attachment :logicians, :drawing
  end
end
