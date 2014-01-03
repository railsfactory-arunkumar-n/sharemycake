class MysessionController < Devise::SessionsController
	
	#~ #before_filter :
  def autheraized
    if user_signed_in? 
      if(current_user.admin == true)
          redirect_to admin_path
       
       elsif(((current_user.up_comming_event)&&(current_user.invitation)) ||  ((current_user.up_comming_event==false)&&(current_user.invitation)))
           redirect_to index_page_path
       
       elsif(((current_user.up_comming_event)&&(current_user.invitation==false)))
           
          redirect_to dash_board_path
        else
          
          redirect_to  events_path
        end
      end
      
  end
end