class AddImageToFruits < ActiveRecord::Migration[7.0]
  def change
    add_column :fruits, :image, :string
  end
end
