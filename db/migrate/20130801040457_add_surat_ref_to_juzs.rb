class AddSuratRefToJuzs < ActiveRecord::Migration
  def up
  add_column :surats, :juzs_id, :integer
  end
  def down
  remove_coloumn :surats, :juzs_id, :integer
  end
end
