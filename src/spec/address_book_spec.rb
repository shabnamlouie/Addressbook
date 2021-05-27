# error handling for  phone number file


require_relative "../phone_number.rb"

describe PhoneNumber do
  phone = PhoneNumber.new
  it "should make a class call phone number" do
    expect(phone).to eq(phone)

  end
end




# error handling for address file

require_relative "../address_book.rb"

describe Address do
  address = Address.new
  it "should make a class for adreess" do
    expect(address).to eq(address)
    
  end
end




# error handling for addressbook file

require_relative "../address_book.rb"

describe print_results do
  print = Print.new
  it "should make a class for print" do
    expect(printresult).to eq(printresult)
    
  end
end

require_relative "../address_book.rb"

describe find_by_name do
  find_by_name = Find_by_name.new
  it "should make a class for find_by_name" do
    expect(find_by_name).to eq(find_by_name)
    
  end
end