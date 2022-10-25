class ChangeColumnWithDefaultToTasks < ActiveRecord::Migration[7.0]
  def change
    change_column_default :tasks, :status, 'project'
    change_column_default :tasks, :completed, false
  end
end
