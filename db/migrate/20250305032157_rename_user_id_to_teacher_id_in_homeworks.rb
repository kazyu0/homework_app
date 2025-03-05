class RenameUserIdToTeacherIdInHomeworks < ActiveRecord::Migration[7.1]
  def change
    rename_column :homeworks, :user_id, :teacher_id
  end
end
