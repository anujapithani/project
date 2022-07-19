require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { 
    Product.new(name: "mobile", price: 20000 , quantity: 2, image: "img.jpg" )  
  }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:quantity) }
  it { should validate_presence_of(:image) }

  it { should have_many(:line_items) }
end
