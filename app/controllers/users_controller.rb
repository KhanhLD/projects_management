class UsersController < ApplicationController
	before_filter :signed_in_user, only: [:show, :index]
	before_filter :admin_user, only: [:index]

  def new
		@user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Projects Management!"
      redirect_to @user
    else
      render 'new'
    end
  end

	def show
		@user = User.find(params[:id])
		@groups = @user.groups.paginate(page: params[:page], per_page: 10)
	end

	def index
    @users = User.paginate(page: params[:page], per_page: 10)
	end
end
