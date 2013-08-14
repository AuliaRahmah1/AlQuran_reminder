class MainsController < ApplicationController
	def index		
		@surats = Surat.all
	end

end