Rails.application.routes.draw do
  get 'projects', to: 'projects#index', defaults: { format: 'json' }

  post 'todos', to: 'todo#create', defaults: { format: 'json' }
  patch 'projects/:project_id/todos/:id', to: 'todo#update'
end
