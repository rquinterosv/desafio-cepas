class AddWriterToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :writer, :boolean
  end
end
