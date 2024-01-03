class TasksController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @task = Task.new
  end

  def index
    @tasks = Task.all
  end

  def create
    @project = Project.find(params[:project_id])
    @task = Task.new(task_params.merge!(:project_id => @project.id))
    if @task.save
      redirect_to project_path(@project.id)
    else
      render 'new'
    end
  end


  private

  def task_params
    params.require(:task).permit(:body)
  end

end
