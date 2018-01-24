AdminUser.create(email: "test1@test.com", 
                        password: "badass", 
                        password_confirmation: "badass", 
                        first_name: "Jon", 
                        last_name: "Snow", 
                        type: "AdminUser",
                        phone: "8627728650")

puts '1 Admin User created'

@user = User.create(email: "regular@joe.com", 
                    password: "badass", 
                    password_confirmation: "badass", 
                    first_name: "Regular", 
                    last_name: "Joe",
                    phone: "8627728650")

puts '1 User created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))


puts "3 audit logs have been created"