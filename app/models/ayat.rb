class Ayat < ActiveRecord::Base
 		validates :number, :message, presence: true
		attr_accessible :number, :message, :mp3file, :image, :surats_id
		belongs_to :surat, class_name: 'Surat', foreign_key:"surats_id"
		mount_uploader :mp3file, AyatUploader
		mount_uploader :image, ImageUploader
end

