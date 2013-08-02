class CreateAyats < ActiveRecord::Migration
  def change
    create_table :ayats do |t|
      t.integer :number
      t.text :message
      
      t.timestamps
    end
		 
  end
end
