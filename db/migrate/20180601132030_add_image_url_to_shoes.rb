class AddImageUrlToShoes < ActiveRecord::Migration[5.2]
  def change
    add_column :shoes, :image_url, :string
  end
end
