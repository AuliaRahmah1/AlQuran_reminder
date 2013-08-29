class Ayat < ActiveRecord::Base
 		validates :number, :message, presence: true
		attr_accessible :number, :message, :mp3file, :image, :surats_id, :insert_ayat, :first_ayat, :last_ayat
		belongs_to :surat, class_name: 'Surat', foreign_key:"surats_id"
		mount_uploader :mp3file, AyatUploader
		mount_uploader :image, ImageUploader

		def prev
			index = surat.ayats.index(self)
			if index == 0
				nil
			else
				surat.ayats.at(index + 1)
			end
		end

		def next
			if !self.last_ayat?
				index = surat.ayats.index(self)
				surat.ayats.at(index + 1)
			else
				nil
			end
		end
end
