require_relative "../phone_number.rb"

describe PhoneNumber do
  phone = PhoneNumber.new
  it "should make a class call phone number" do
    expect(phone).to eq(phone)

  end
end

# require_relative "../phone_number.rb"

# describe PhoneNumber do
#   phone = PhoneNumber.new
#   it "should make a class call phone number" do
#     expect(phone).to eq(phone)
    
#   end
# end