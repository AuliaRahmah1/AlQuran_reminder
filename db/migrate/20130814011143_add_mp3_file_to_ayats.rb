class AddMp3FileToAyats < ActiveRecord::Migration
  def change
    add_column :ayats, :mp3file, :string
  end
end
