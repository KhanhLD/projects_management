class SchedulesController < ApplicationController

	before_filter :admin_user, only: [:index] 

	def create
		@schedule = Schedule.new(params[:schedule])
		if @schedule.save
			flash[:success] = "Schedule created!"
			redirect_to current_user
		end
	end

	def index
		@schedules = Schedule.paginate(page: params[:page], per_page: 10)
	end
end
