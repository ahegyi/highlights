class AddUserIdToHighlight < ActiveRecord::Migration
  def change
    add_column :highlights, :user_id, :integer
  end
end
