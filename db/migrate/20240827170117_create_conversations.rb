class CreateConversations < ActiveRecord::Migration[7.1]
  def change
    create_table :conversations do |t|
      t.string :id
      t.integer :participants
      t.text :messages

      t.timestamps
    end
  end
end
