class Reminder < ActiveRecord::Base
  attr_accessible :remind_before, :remind_every, :start_at, :start_ayat_id, :surat_id, :user_id
  attr_accessible :dismiss
  belongs_to :ayat, class_name: 'Ayat', foreign_key: :start_ayat_id
  belongs_to :surat, class_name: 'Surat', foreign_key: :surat_id 
  belongs_to :user
end
