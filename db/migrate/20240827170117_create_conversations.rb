# db/migrate/20240827170117_create_conversations.rb
class CreateConversations < ActiveRecord::Migration[7.0]
  def change
    create_table :conversations do |t|
      t.integer :participants, default: 0
      t.text :messages

      t.timestamps
    end
  end
end