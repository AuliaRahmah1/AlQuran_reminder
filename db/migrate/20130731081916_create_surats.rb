class CreateSurats < ActiveRecord::Migration
  def change
    create_table :surats do |t|
      t.string :title

      t.timestamps
    end
  end
end
