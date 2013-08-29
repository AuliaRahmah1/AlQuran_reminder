class AddFirstAyatAndLastAyatToAyats < ActiveRecord::Migration
  def change
    add_column :ayats, :first_ayat, :boolean
    add_column :ayats, :last_ayat, :boolean
  end
end
