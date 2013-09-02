class ReadingHistoriesController < ApplicationController
	before_filter :authenticate_user!
	def index
		@reading_histories = ReadingHistory.all
	end

	def show
		@reading_history = ReadingHistory.find(params[:id])
	end

	def create
		@reading_history = ReadingHistory.new(params[:reading_history]) do |rh| 
			rh.start_reading = DateTime.now
			rh.user = current_user
		end
		@reading_history.save
		session[:user_reading] = true
		session[:reading_history_id] = @reading_history.id
		redirect_to ayat_path(@reading_history.start_ayat)
	end

	def update
		@reading_history = ReadingHistory.find session[:reading_history_id]
		if session[:user_reading]
			@reading_history.end_reading = DateTime.now
			@reading_history.duration = @reading_history.end_reading - @reading_history.start_reading
			@reading_history.update_attributes(params[:reading_history])
			session[:user_reading] = nil
			session[:reading_history] = nil
		end
		redirect_to reading_histories_path
	end


end