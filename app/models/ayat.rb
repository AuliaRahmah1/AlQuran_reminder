class Ayat < ActiveRecord::Base
 		validates :number, :message, presence: true
		attr_accessible :number, :message
		belongs_to :surat, class_name: 'Surat', foreign_key:"surats_id"
end
