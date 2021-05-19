require "./contact"

class AddressBook
    attr_reader :contacts

    def initialize
        @contacts = []
    end

    def print_contact_list
        puts "Contact List"
        contacts.each do |contact|
            puts contact.to_s('last_first')
        end
    end
end

address_book = AddressBook.new

Shabnam =  Contact.new
Shabnam.first_name = "Shabnam"
Shabnam.last_name = "Louie"
Shabnam.add_phone_number("Home", "123-456-78")
Shabnam.add_phone_number("Work", "987-654-32")
Shabnam.add_address("Home", "20 Ford st.", "", "Surry hills", "NSW", "2000")

Sara = Contact.new
Sara.first_name = "Sara"
Sara.last_name = "Pitt"
Sara.add_phone_number("Home", "222-222-222")
Sara.add_address("Home", "10 Jay st", "", "Central", "NSW", "2000")

address_book.contacts.push(Shabnam)
address_book.contacts.push(Sara)

address_book.print_contact_list
