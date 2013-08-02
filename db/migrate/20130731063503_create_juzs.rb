class CreateJuzs < ActiveRecord::Migration
  
  def change
    create_table :juzs do |t|
      t.integer :number
      t.timestamps
    end
  end
end
