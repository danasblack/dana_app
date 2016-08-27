require 'mailgun'
class NotifierMailer < ApplicationMailer
<!-- // Check for empty fields
if(empty($_POST['name'])  		||
   empty($_POST['email']) 		||
   empty($_POST['phone']) 		||
   empty($_POST['message'])	||
   !filter_var($_POST['email'],FILTER_VALIDATE_EMAIL))
   {
	echo "No arguments Provided!";
	return false;
   }
	
		 -->
def send_simple_message
  RestClient.post "https://api:key-72a29f8c158920ee0e9ee8a872ea2c53"\
  "@api.mailgun.net/v3/sandbox0682a38c2a344dd6bd04c4eeef810262.mailgun.org/messages",
<!-- # First, instantiate the Mailgun Client with your API key -->
mg_client = Mailgun::Client.new 'your-api-key'

<!-- # Define your message parameters -->
message_params =  { name: ['name'],
                    from: 'Mailgun Sandbox <postmaster@sandbox0682a38c2a344dd6bd04c4eeef810262.mailgun.org>, 
                    to:   'danasblack.com',
                    message: '[message]',
                    phone:    ['phone']'
                  }

<!-- # Send your message through the client -->
mg_client.send_message 'sending_domain.com', message_params

end