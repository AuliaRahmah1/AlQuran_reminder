class RemindersController < ApplicationController
	before_filter :authenticate_user!
	def index
		@reminders = current_user.reminders
		respond_to do |format|
			format.html
			format.js
		end
	end
	def show
		@reminder = current_user.reminders.find(params[:id])
	end
	def new
	 @reminder = Reminder.new
	end
	def create
		@reminder = current_user.reminders.build(params[:reminder])
		if @reminder.save
			redirect_to reminders_path
		else
			render :new
		end
	end
	def edit
		@reminder = Reminder.find(params[:id])
	end

	def update
		@reminder = current_user.reminders.find(params[:id])
		if @reminder.update_attributes(params[:reminder])
			redirect_to reminders_path
		else
			render :edit
		end
	end

	def destroy
		@reminder = Reminder.find(params[:id])
		@reminder.destroy
		redirect_to reminders_path
	end

	def check
		render text: current_user.present?
	end
end