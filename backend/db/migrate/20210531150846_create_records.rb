class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :record
      t.integer :game_id
      t.integer :user_id
      end
  end
end
