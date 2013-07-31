class CreateJuzs < ActiveRecord::Migration
  
  def change
    create_table :juzs do |t|
      t.integer :number
      t.timestamps
      t.integer :slug
    end
  end
  add_index :juzs, :slug, unique: true
end
