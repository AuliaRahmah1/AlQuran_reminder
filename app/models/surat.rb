class Surat < ActiveRecord::Base
	 extend FriendlyId
  	friendly_id :title, use: :slugged

  	validates :title, presence: true
  	attr_accessible :title
  	belongs_to :juz
  	has_many :ayats, class_name: 'Ayat', foreign_key: :surats_id
end
