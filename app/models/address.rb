class Address < ApplicationRecord
    belongs_to :user
    has_many   :orders
    validates_presence_of :address_line_1, :address_line_2, :city, :state, :zip
end
