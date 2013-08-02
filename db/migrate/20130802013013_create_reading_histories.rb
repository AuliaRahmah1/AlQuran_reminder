class CreateReadingHistories < ActiveRecord::Migration
  def change
    create_table :reading_histories do |t|
      t.integer :start_ayat_id
      t.integer :end_ayat_id
      t.datetime :start_reading
      t.datetime :end_reading
      t.integer :duration
      t.belongs_to :user
      t.timestamps
    end
  end
end
