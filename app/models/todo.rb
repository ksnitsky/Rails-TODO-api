class Todo < ApplicationRecord
  belongs_to :project

  def complete
    update(isCompleted: !isCompleted)
  end

  def project_title=(project_name)
    new_or_found_project = Project.find_or_create_by(title: project_name.downcase)
    self.project = new_or_found_project
  end
end
