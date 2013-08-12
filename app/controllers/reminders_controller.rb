class RemindersController < ApplicationController
	def index
	@reminders = Reminder.all
	end
	def show
		@reminder = Reminder.find(params[:id])
	end
	def new
	 @reminder = Reminder.new
	end
	def create
		@reminder = Reminder.new(params[:reminder])
		if @reminder.save
			redirect_to reminder_path(@reminder)
		else
			render :new
		end
	end
	def edit
		@reminder = Reminder.find(params[:id])
	end
	def update
		@reminder = Reminder.find(params[:id])
	if @reminder.update_attributes(params[:reminder])
		redirect_to reminder_path(@reminder)
	else
		render :edit
	end
end

	def destroy
		@reminder = Reminder.find(params[:id])
		@reminder.destroy
		redirect_to reminders_path
	end
end