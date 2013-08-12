class ReadingHistoriesController < ApplicationController
	def index
	@reading_histories = ReadingHistory.all
	end
	def show
		@reading_history = ReadingHistory.find(params[:id])
	end
end