AdminUser.create(email: "test1@test.com", 
                        password: "badass", 
                        password_confirmation: "badass", 
                        first_name: "Jon", 
                        last_name: "Snow", 
                        type: "AdminUser",
                        phone: "9173193827")

puts '1 Admin User created'

@employee = Employee.create(email: "regular@joe.com", 
                    password: "badass", 
                    password_confirmation: "badass", 
                    first_name: "Regular", 
                    last_name: "Joe",
                    phone: "9173193827")

puts '1 employee created'

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @employee.id, overtime_request: 2.5)
end

puts "100 Posts have been created"


