class TodoController < ApplicationController
  def create
    todo = Todo.create(todo_params)
    if todo.save
      render status: :created, json: { message: 'Todo was created' }
    else
      render status: :internal_server_error, json: { message: 'Something went wrong' }
    end
  end

  def update
    todo = Todo.find_by(
      id: params[:id],
      project_id: params[:project_id]
    )
    if todo
      todo.complete
      render status: :ok, json: { message: 'Todo status was updated' }
    else
      render status: :not_found, json: { message: 'There is no such todo' }
    end
  end

  private

  def todo_params
    params.require(:todo)
          .permit(%i[text project_title])
  end
end
