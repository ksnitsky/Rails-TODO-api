class AddNullFalseToTitleProjects < ActiveRecord::Migration[7.0]
  def change
    change_column_null :projects, :title, false
  end
end
