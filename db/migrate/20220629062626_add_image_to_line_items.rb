class AddImageToLineItems < ActiveRecord::Migration[7.0]
  def change
    add_column :line_items, :image, :string
  end
end
