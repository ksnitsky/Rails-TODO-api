class AddTodosToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :todos, :string
  end
end
