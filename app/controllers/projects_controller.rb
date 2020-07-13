class ProjectsController < ApplicationController
  
  def new 
  end 

  def create
    @project = Project.new(project_params)
    if @project.valid?
      @project.save
      redirect_to @project
    else
      render action: 'new'
    end
  end

  def show 
    @project = Project.find(params[:id])
  end 

  def index 
    @projects = Project.all 
  end 

  def edit 
    @project = Project.find(params[:id])
  end 

  def update 
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to @project 
    else 
      render action: 'edit'
    end 
  end 


  private

  def project_params
    params.require(:project).permit(:title)
  end

end
