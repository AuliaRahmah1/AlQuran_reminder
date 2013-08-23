class MainsController < ApplicationController
	before_filter :authenticate_user!
	def index		
		@surats = Surat.all
	end

end