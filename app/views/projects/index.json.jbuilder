# frozen_string_literal: true

json.projects @projects do |project|
  json.partial! project
end
