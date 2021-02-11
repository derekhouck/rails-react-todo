class ChangeTodoitemActiveDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :todoitems, :active, true
  end
end
