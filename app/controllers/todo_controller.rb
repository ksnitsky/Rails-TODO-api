class TodoController < ApplicationController
  def create
    @todo = Todo.create(todo_params)
    if @todo.save
      render status: :created
    else
      render status: :internal_server_error,
             json: { message: 'Что-то пошло не так.' }
    end
  end

  def update
    todo = Todo.find_by(
      id: params[:id],
      project_id: params[:project_id]
    )
    if todo&.complete
      render status: :ok, json: { message: 'Задача успешно обновлена.' }
    else
      render status: :not_found, json: { message: 'Такой задачи не существует.' }
    end
  end

  private

  def todo_params
    params.require(:todo)
          .permit(%i[todo_text project_title])
  end
end
