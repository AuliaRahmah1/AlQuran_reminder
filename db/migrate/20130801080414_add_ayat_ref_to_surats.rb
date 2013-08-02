class AddAyatRefToSurats < ActiveRecord::Migration
  def up
  add_column :ayats, :surats_id, :string
  end
  def down
  remove_coloumn :ayats, :surats, :string
  end
end
