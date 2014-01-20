require_relative 'class_contact'
require_relative 'rolodex'

class CRA

attr_accessor :my_rolodex

            def initialize(my_rolodex)
            	@my_rolodex = my_rolodex
            end

	def main_menu
	  print_main_menu
	  user_selected = gets.to_i
	  call_option(user_selected)
	  user_selected
	end
	
	def print_main_menu
	  puts "[1] Add a new contact"
	  puts "[2] Modify an existing contact"
	  puts "[3] Delete a contact"
	  puts "[4] Display all the contacts"
	  puts "[5] Display an attribute"
	  puts "[7] Exit"
	  puts "Enter a number: "
	end

	def call_option(user_selected)
		@my_rolodex.add_new_contact if user_selected == 1
		@my_rolodex.modify_existing_contact if user_selected == 2
		@my_rolodex.delete_contact if user_selected == 3
		@my_rolodex.display_all_contacts if user_selected == 4
		@my_rolodex.display_an_attribute if user_selected == 5
		exit if user_selected == 7
	end
	
	def exit
		return 7
	end
end

my_rolodex = Rolodex.new
a_cra_app = CRA.new(my_rolodex)
a = 0

while a != 7
a = a_cra_app.main_menu
end
