class Surat < ActiveRecord::Base
	 extend FriendlyId
  	friendly_id :title, use: :slugged

  	validates :title, presence: true
  	attr_accessible :title, :mp3file
  	belongs_to :juz
  	has_many :ayats, class_name: 'Ayat', foreign_key: :surats_id

  	mount_uploader :mp3file, SuratUploader
end
