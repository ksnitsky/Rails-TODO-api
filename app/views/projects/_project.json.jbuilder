# frozen_string_literal: true

json.id project.id
json.title project.title.capitalize

json.todos project.todos do |todo|
  json.id todo.id
  json.text todo.text
  json.isCompleted todo.isCompleted
end
