class EventMailer < ActionMailer::Base

belongs_to :User 
has_many :invitations 
  default from: "from@example.com"
  
  
  def send_invitation(event) 
  
   for invitation in event.invitations [do]
   
       mail(:to => invitation.email, :subject => "Welcome to My Awesome Event")

	end 
  
  end
end
