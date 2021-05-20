require "./contact"

class AddressBook
    attr_reader :contacts

    def initialize
        @contacts = []
    end

    def run
        loop do
            puts "Address Book"
            puts "a: Add Contact"
            puts "p: Print Address Book"
            puts "e: Exit"
            print "Enter your choice: "
            input = gets.chomp.downcase
            case input
            when 'a'
                add_contact
            when 'p'
                print_contact_list
            when 'e'
                break
            end
        end
    end

    def add_contact
        contact = Contact.new
        print "First name: "
        contact.first_name = gets.chomp
        print "Middle name: "
        contact.middle_name = gets.chomp
        print "Last name: "
        contact.last_name = gets.chomp
        contacts.push(contact)
    end


    def print_results(search, results)
        puts search
        results.each do |contact|
            puts contact.to_s('full_name')
            contact.print_phone_numbers
            contact.print_addresses
            puts "\n"
        end
    end

    def find_by_name(name)
        results = []
        search = name.downcase
        contacts.each do |contact|
            if contact.full_name.downcase.include?(search)
                results.push(contact) unless results.include?(contact)
            end
        end
        print_results("Name search results (#{search})", results)
    end

    def find_by_phone_number(number)
        results = []
        search = number.gsub("-", "")
        contacts.each do |contact|
            contact.phone_numbers.each do |phone_number|
                if phone_number.number.gsub("-", "").include?(search)
                    results.push(contact)
                end
            end
        end
        print_results("Phone search results (#{search})", results)
    end

    def find_by_address(query)
        results = []
        search = query.downcase
        contacts.each do |contact|
            contact.addresses.each do |address|
                if address.to_s('long').downcase.include?(search)
                    results.push(contact) unless results.include?(contact)
                end
            end
        end
        print_results("Address search results (#{search})", results)
    end

    def print_contact_list
        puts "Contact List"
        contacts.each do |contact|
        puts contact.to_s('last_first')
        end
    end
end 

address_book = AddressBook.new
address_book.run

# Shabnam =  Contact.new
# Shabnam.first_name = "Shabnam"
# Shabnam.last_name = "Louie"
# Shabnam.add_phone_number("Home", "123-456-78")
# Shabnam.add_phone_number("Work", "987-654-32")
# Shabnam.add_address("Home", "20 Ford st.", "", "Surry hills", "NSW", "2000")

# Sara = Contact.new
# Sara.first_name = "Sara"
# Sara.last_name = "Pitt"
# Sara.add_phone_number("Home", "222-222-222")
# Sara.add_address("Home", "10 two Jay st", "", "Central", "NSW", "2000")

# address_book.contacts.push(Shabnam)
# address_book.contacts.push(Sara)

# # address_book.print_contact_list

# # address_book.find_by_name("e")
# # address_book.find_by_phone_number("2")
# address_book.find_by_address("two")