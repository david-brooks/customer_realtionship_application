#require_relative 'class_contact'
class Rolodex
	def initialize
		@contacts = []
		@id = 1
	end

	def contacts
		@contacts
	end

	def add_new_contact
		@id +=1
		print "Please enter your first name: "
		first_name = gets.chomp
		print "Please enter your last name: "
		last_name = gets.chomp
		print "Enter your email address: "
		email = gets.chomp
		print "Enter a note: "
		note = gets.chomp
		contact = Contact.new(1, first_name, last_name, email, note)
		@contacts << Contact.new(@id, first_name, last_name, email, note)
		@contacts.last
	end


  	def modify_existing_contact
  	print "Please enter the id: "
  	id = gets.chomp.to_i
  	print "What is the attribute you wish to modify: (first name, last name, email, note):" 
  	selected = gets.chomp
  	print "Enter modification: "
 	modification = gets.chomp
 	contact = find_a_contact(id) 
    contact.first_name = modification if selected == "first name"
    contact.last_name = modification if selected == "last name"
    contact.note = modification if selected === "note"
    contact.email = modification if selected == "email"
	end

	 def display_an_attribute
	     print "Please enter ID: "
	     id = gets.chomp.to_i
	     print "Enter attribute you want displayed (first_name, last_name, email, note: )"
	     attribute  = gets.chomp
	     contact = find_a_contact(id)
	     puts contact.first_name if attribute == "first_name"
	     puts contact.last_name if attribute == "last_name"
	     puts contact.email if attribute == "email"
	     puts contact.note if attribute == "note"
 
   end

    def delete_contact
		print "Enter id of individual to be deleted:"
		id = gets.chomp.to_i
		contact = find_a_contact(id)
		@contacts.delete(contact)
	end
    
    def display_all_contacts
        	puts "The following is your contact list: "
        	@contacts.each do |contact| puts contact.id.to_s + "First Name: #{contact.first_name}, Last Name: #{contact.last_name}, Email: #{contact.email}, Note: #{contact.note}"
        	end
        end
    end	

	def find_a_contact(id)
		return nil if @contacts.empty?
		@contacts.each do |contact|
			return contact if contact.id == id
		end
	end	
