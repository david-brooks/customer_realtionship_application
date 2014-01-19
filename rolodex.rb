require_relative 'class_contact'
class Rolodex
	def initialize
		@contacts = []
		@id = 100
	end

	def new_contact(first_name, last_name, email, note)
		@id +=1
		contact = Contact.new(@id, first_name, last_name, email, note)
		@contacts << contact
		contact
	end
	
	def find_contact(id)
		@contacts.each do |contact|
			return contact if contact.id == id
		end
	end
end
  	