class CreateLogicians < ActiveRecord::Migration
  def change
    create_table :logicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :hint1
      t.string :hint2
      t.string :hint3
      t.integer :difficulty_level
      t.text :bio

      t.timestamps null: false
    end
  end
end
