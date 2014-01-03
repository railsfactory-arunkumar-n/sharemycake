class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # attr_accessible :password_confirmation, :email ,:password
  #~ protected_attributes :password_confirmation, :email ,:password
   has_many :events 
   has_many :mycontacts
end
