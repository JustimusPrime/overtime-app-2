AdminUser = User.create(email: "test1@test.com", password: "badass", password_confirmation: "badass", first_name: "Jon", last_name: "Snow", type: "AdminUser")

puts '1 Admin User created'

@user = User.create(email: "regular@joe.com", password: "badass", password_confirmation: "badass", first_name: "Regular", last_name: "Joe")

puts '1 User created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"