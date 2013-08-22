class AddDismissToReminders < ActiveRecord::Migration
  def change
    add_column :reminders, :dismiss, :boolean
  end
end
