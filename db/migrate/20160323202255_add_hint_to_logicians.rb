class AddHintToLogicians < ActiveRecord::Migration
  def change
    add_column :logicians, :hint, :text
  end
end
