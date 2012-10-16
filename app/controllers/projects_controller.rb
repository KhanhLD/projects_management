class ProjectsController < ApplicationController
	before_filter :signed_in_user
	before_filter :admin_user, only: [:new, :create, :index]

  def new
		@project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:success] = "Project created!"
      redirect_to @project
    else
      render 'new'
    end
  end

	def show
		@project = Project.find(params[:id])
		@groups = @project.groups.paginate(page: params[:page], per_page: 10)
	end

	def index
    @projects = Project.paginate(page: params[:page], per_page: 10)
	end
end
