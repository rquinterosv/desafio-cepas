class AddReviewerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :reviewer, :boolean
  end
end
