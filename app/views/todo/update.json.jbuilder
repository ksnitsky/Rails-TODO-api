# frozen_string_literal: true

json.id @todo.id
json.text @todo.text
json.isCompleted @todo.isCompleted

# json.id @todo.project.id
# json.title @todo.project.title.capitalize
#
# json.todos @todo.project.todos do |todo|
#   json.id todo.id
#   json.text todo.text
#   json.isCompleted todo.isCompleted
# end
