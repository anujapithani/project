require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    expect(User.new).to_not be_valid
  end
  subject { 
    User.new(user_name: "deepu",
                        email: "deepu@gmail.com",
                        password: "some_password"
    )  
}

#describe "Validations" do
it "is valid with valid attributes" do
 expect(subject).to be_valid
end

it "is not valid without a user_name" do
 subject.user_name = nil
 expect(subject).to_not be_valid
end

it "is not valid without an email" do
 subject.email = nil
 expect(subject).to_not be_valid
end
it "is not valid without an password" do
  subject.password = nil
  expect(subject).to_not be_valid
 end
#end

 #describe "Associations" do
  it { should have_many(:orders) }
  it { should have_many(:addresses) }
  it { should have_one(:cart) }
#end

end
