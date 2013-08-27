class SearchController < ApplicationController
  def index
		@surats = Surat.where('title like ?', "%#{params[:q]}%")
		@ayats = Ayat.where('message like ?', "%#{params[:q]}%") 
  end
end
