class Product < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :line_items
    validates_presence_of :name, :price, :quantity, :image
end
