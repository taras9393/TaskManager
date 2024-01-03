class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @tasks = @project.tasks.all
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      #flash[:success] = "You add a new word!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end


  private

  def project_params
    params.require(:project).permit(:title)
  end

end
