class UserMailer < ActionMailer::Base
  default  #:to => User.all.map(&:email),

  			:from => "from@example.com"
  
   def welcome_email(user)
    @user = user
    @url  = "http://example.com/login"
email_with_name = "#{@user.name} <#{@user.email}>"
  mail(:to => email_with_name, 
  	:subject => "Welcome to My Awesome event")  
    do |format|
      format.html { render 'another_template' }
      format.text { render :text => 'Render text' }
    end
    end
mail("X-Spam" => value)
attachments['filename.jpg'] = File.read('/path/to/filename.jpg')
encoded_content = SpecialEncode(File.read('/path/to/filename.jpg'))
attachments['filename.jpg'] = {:mime_type => 'application/x-gzip',
                               :encoding => 'SpecialEncoding',
                               :content => encoded_content }

def welcome
  attachments.inline['image.jpg'] = File.read('/path/to/image.jpg')
end
def new_registration(user)
    @user = user
    mail(:subject => "New User Signup: #{@user.email}")
	
	

  end


def send_invitation(event)

end 
end
