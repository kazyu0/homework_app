class RemoveIntegerFromHomeworks < ActiveRecord::Migration[7.1]
  def change
    remove_column :homeworks, :integer, :integer
  end
end
