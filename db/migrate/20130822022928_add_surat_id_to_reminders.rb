class AddSuratIdToReminders < ActiveRecord::Migration
  def change
    add_column :reminders, :surat_id, :integer
  end
end
