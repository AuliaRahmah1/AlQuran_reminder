class AddInsertAyatToAyat < ActiveRecord::Migration
  def change
    add_column :ayats, :insert_ayat, :string
  end
end
