class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render status: :ok
  end
end
