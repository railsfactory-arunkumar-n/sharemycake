class CelebrentController < ApplicationController
  def myevent
  end

  def dash_board
  p '#################################################'
  p @user=current_user
  p  @event=current_user.events.all
   @date=@event.first.id
  p  @upcoming_event=Event.current_date(@date,@user)
    
  end

  def create_event
  end
end
