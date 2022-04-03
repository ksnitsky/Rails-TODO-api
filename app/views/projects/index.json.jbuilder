# frozen_string_literal: true

json.array! @projects do |project|
  json.partial! project
end
