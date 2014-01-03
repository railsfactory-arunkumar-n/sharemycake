class Event < ActiveRecord::Base
	 has_many :organizations 
	 has_many :orgs , through: :organizations
	 belongs_to:user
	 #belongs_to :user, :class_name => "User", :foreign_key => "user_id"
	 #~ protected_attributes :
	 
	 def self.current_date(date,user)
		  today_date= Date.today
		  user.events.find(:all , :conditions =>['date<?',today_date])
	 end
end
