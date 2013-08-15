class AyatsController < ApplicationController
	def index
	@ayats = Ayat.all
	end
	def show
		@ayat = Ayat.find(params[:id])
		@surat = @ayat.surats
	end
	def new
		@ayat = Ayat.new	
	end
	def create
		@ayat = Ayat.new(params[:ayat])
		if @ayat.save
			redirect_to ayat_path(@ayat)
		else
			render :new
		end
	end
	def edit
		@ayat = Ayat.find(params[:id])
	end
	def update
		@ayat = Ayat.find(params[:id])
		if @ayat.update_attributes(params[:ayat])
			 redirect_to ayat_path(@ayat)
		else
			 render :edit
		end
	end

	def destroy
		@ayat = Ayat.find(params[:id])
		@ayat.destroy
		redirect_to ayats_path
	end
end