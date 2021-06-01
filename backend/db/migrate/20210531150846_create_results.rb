class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :game_id
      t.integer :user_id
      t.string :result
      end
  end
end
