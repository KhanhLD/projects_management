class SchedulesController < ApplicationController
  def new
		@group = Group.find(params[:id])
		@schedule = Schedule.new
  end

	def create
	end

	def index
		@schedules = Schedule.paginate(page: params[:page], per_page: 10)
	end
end
