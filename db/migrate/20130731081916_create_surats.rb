class CreateSurats < ActiveRecord::Migration
  def change
    create_table :surats do |t|
      t.string :title	
      t.timestamps
     	t.string :slug
    end
    add_index :surats, :slug, unique: true
  end
end
