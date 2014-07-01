class Purchase < ActiveRecord::Base

	belongs_to :user

	validates_presence_of :first_name
	validates_presence_of :last_name
	validates_acceptance_of :terms_of_service, :accept => true

end
