class AddMp3fileToSurats < ActiveRecord::Migration
  def change
    add_column :surats, :mp3file, :string
  end
end
