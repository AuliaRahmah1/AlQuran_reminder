class AddImageToAyats < ActiveRecord::Migration
  def change
    add_column :ayats, :image, :string
  end
end
