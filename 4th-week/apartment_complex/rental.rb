class Person
	attr_accessor :phone_num, :first_name, :last_name, :income, :credit_score, :id, :apt_code
	attr_reader :ssn

	def initialize (first, last, ssn)
		@first_name = first
		@last_name = last
		@ssn = ssn
	end

	def to_s
			"NAME: #{first_name} #{last_name}" + 
			(apt_code ? "\nAPARTMENT: #{apt_code}" : "") + 
			(phone_num ? "\nPHONE NUMBER: #{phone_num}" : "")
	end

end



class Apartment
	attr_accessor :people, :sq_ft, :address
	attr_reader :apt_code

	def initialize (code)
		@apt_code = code
		@people = []
	end

	def occupied
		people.empty?
	end

	def credit_check(person)
		if person.credit_score > 500 
			if occupied == true
				person.apt_code = apt_code
				people << person
				return "Apartment rented"
			else
				return "Not for rent"
			end
		end
	end

end