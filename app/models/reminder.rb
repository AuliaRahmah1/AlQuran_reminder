class Reminder < ActiveRecord::Base
  attr_accessible :remind_before, :remind_every, :start_at, :start_ayat_id
  belongs_to :ayat, class_name: 'Ayat', foreign_key: :start_ayat_id
end
