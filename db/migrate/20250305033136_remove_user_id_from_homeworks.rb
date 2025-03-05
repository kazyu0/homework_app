class RemoveUserIdFromHomeworks < ActiveRecord::Migration[7.1]
  def change
    remove_column :homeworks, :user_id, :integer
  end
end
