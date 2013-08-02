class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.integer :start_ayat_id
      t.datetime :start_at
      t.integer :remind_every
      t.integer :remind_before

      t.timestamps
    end
  end
end
