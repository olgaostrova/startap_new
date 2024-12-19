class DeleteChats < ActiveRecord::Migration[7.0]
  def change
    drop_table :messages
    drop_table :chats
  end
end
