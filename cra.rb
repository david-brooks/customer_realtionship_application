require_relative 'class_contact'
require_relative 'rolodex'

class CRA
	@rolodex = Rolodex.new
	@rolodex.new_contact("Elon", "Musk", "elon@spacex.com", "Hyperloop is awesome!")
	
	def self.print_main_menu
	  puts "[1] Add a new contact"
	  puts "[2] Modify an existing contact"
	  puts "[3] Delete a contact"
	  puts "[4] Display all the contacts"
	  puts "[5] Display an attribute"
	  puts "[6] Exit"
	  puts "Enter a number: "
	end

	def self.call_option(user_selected)
		add_new_contact if user_selected == 1
		modify_existing_contact if user_select == 2
		delete_contact if user_selected == 3
		display_all_contacts if user_selected == 4
		display_an_attribute if user_selected == 5
		exit if user_selected == 6
	end

	def self.main_menu
	  print_main_menu
	  user_selected = gets.to_i
	  call_option(user_selected)
	end

	def self.add_new_contact
		print "Please enter your first name: "
		first_name = gets.chomp
		print "Please enter your last name: "
		last_name = gets.chomp
		print "Enter your email address: "
		email = gets.chomp
		print "Enter a note: "
		note = gets.chomp
		new_contact = @rolodex.new_contact(first_name, last_name, email, note)
	end
	

end


	
	CRA.print_main_menu
	CRA.main_menu
	CRA.call_option
	CRA.add_new_contact