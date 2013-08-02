class Juz < ActiveRecord::Base
  validates :number, presence: true
  attr_accessible :number
  has_many :surats, class_name: 'Surat', foreign_key: :juzs_id
end
