class GroupsController < ApplicationController
	before_filter :signed_in_user
	before_filter :admin_user, only: [:new, :create, :index]

  def new
		@group = Group.new
  end

  def create
    @group = Group.new(params[:group])
    if @group.save
      flash[:success] = "Project assigned!"
      redirect_to @group
    else
      render 'new'
    end
  end

	def show
		@group = Group.find(params[:id])
		@schedule = @group.schedules.new
	end

	def index
    @groups = Group.paginate(page: params[:page], per_page: 10)
	end
end
