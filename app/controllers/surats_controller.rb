class SuratsController < ApplicationController
	def index
	@surats = Surat.all
	end
	def show
		@surat = Surat.find(params[:id])
		@ayats = @surat.ayats
	end
	def new
	 @surat = Surat.new
	end
	def create
		@surat = Surat.new(params[:surat])
		if @surat.save
			redirect_to surat_path(@surat)
		else
			render :new
		end
	end
	def edit
		@surat = Surat.find(params[:id])
	end
	def update
		@surat = Surat.find(params[:id])
	if @surat.update_attributes(params[:surat])
		redirect_to surat_path(@surat)
	else
		render :edit
	end
end

	def destroy
		@surat = Surat.find(params[:id])
		@surat.destroy
		redirect_to surats_path
	end
end