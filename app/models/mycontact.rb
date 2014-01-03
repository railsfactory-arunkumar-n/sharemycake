class Mycontact < ActiveRecord::Base
	 #~ protected_attributes :user_attributes
	belongs_to:user
	accepts_nested_attributes_for :user
end
