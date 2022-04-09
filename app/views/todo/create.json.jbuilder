json.id @todo.project.id
json.title @todo.project.title.capitalize

json.todos do
  json.child! do
    json.id @todo.id
    json.text @todo.text
    json.isCompleted @todo.isCompleted
  end
end
