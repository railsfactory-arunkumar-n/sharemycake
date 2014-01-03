class UserMailer < ActionMailer::Base
  default from: "admin@sharemycake.com"
  def invitation(user)
    
    p '############################################'
   p @to = user
      @sender=user.user
    @url  = 'localhost:3000/payment'
    #~ mail(to: "#{user.email}", subject: 'Welcome to My Awesome Site')
    
     #~ ActionMailer::Base.mail( :to => user.email, :subject => "token code").deliver
      #~ mail(  :to => user.email, :subject => "token code")
       mail(:to=> user.email ,:from=>"admin@sharemycake.com",:subject=>"subject")
  end
end
