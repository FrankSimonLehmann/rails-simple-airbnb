class AddImgToFlat < ActiveRecord::Migration[7.1]
  def change
    add_column :flats, :img, :string
  end
end
