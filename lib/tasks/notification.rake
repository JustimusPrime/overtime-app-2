namespace :notification do
  desc "Sends SMS notification to employees asking them to log if the had overtime or not"
  task sms: :environment do
    # 1. Schedule Sunday at 5 PM
    # 2. Iterate over all employees
    # 3. Skip admin users
    # 4. Send a message that has instructions and a link to log time
     # User.all.each do |user|
     #    SmsTool.send_sms(messsage: , number: )
     #  end
     # number: 
     # have to have no spaces or dashes
     # exactly 10 characters
     # all characters have to be a number
     

  end

end
