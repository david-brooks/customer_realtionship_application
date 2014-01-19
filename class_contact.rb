class Contact
	attr_accessor :first_name, :last_name, :age, :email, :note
	attr_reader :id

	def initialize(id, first_name, last_name, age, email, note)
		@id = id
		@first_name = first_name
		@last_name = last_name
		@age = age
		@email = email
		@note = note
	end
end