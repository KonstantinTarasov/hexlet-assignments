class ChangeColumnWithDefaultToTasks < ActiveRecord::Migration[6.1]
  def change
    change_column_default :tasks, :status, 'project'
    change_column_default :tasks, :completed, false
  end
end
