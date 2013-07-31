class Juz < ActiveRecord::Base
  validates :number, presence: true
  attr_accessible :number
end
