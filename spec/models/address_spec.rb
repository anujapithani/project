require 'rails_helper'

RSpec.describe Address, type: :model do
  subject { 
    Address.new(address_line_1: "hyd",address_line_2: "hyd",city: "sr nagar",state: "hyd",zip: "500078")  
  }

  it "address_line_1 must be present" do
    subject.address_line_1 = nil
    expect(subject).to_not be_valid
  end

  it { should validate_presence_of(:address_line_2) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:zip) }

  describe "Associations" do
    it { should belong_to(:user) }
    it { should have_many(:orders) }
  end
  
end
