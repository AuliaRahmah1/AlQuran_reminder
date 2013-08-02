class ReadingHistory < ActiveRecord::Base
  attr_accessible :duration, :end_ayat_id, :end_reading, :start_ayat_id, :start_reading
  belongs_to :user
  belongs_to :start_ayat, class_name: 'Ayat', foreign_key: :start_ayat_id
  belongs_to :end_ayat, class_name: 'Ayat', foreign_key: :end_ayat_id

end
