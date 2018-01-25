namespace :notification do
  desc "Sends SMS notification to employees asking them to log if the had overtime or not"
  task sms: :environment do
    if Time.now.sunday?
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

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end

end
