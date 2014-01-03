class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_user!
  #~ #before_filter :
  def autheraized
    if user_signed_in? 
      if(current_user.admin == true)
          redirect_to admin_path
       
       elsif(((current_user.up_comming_event)&&(current_user.invitation)) ||  ((current_user.up_comming_event==false)&&(current_user.invitation)))
           redirect_to index_page_path
       
       elsif(((current_user.up_comming_event)&&(current_user.invitation==false)))
           
          redirect_to celebrent_dash_board_path
        else
          
          redirect_to  invitation_dash_board_path
        end
      end
      
    end
  def production
    unless(current_user.admin)
      redirect_to home_show_path
      end
  end
end
