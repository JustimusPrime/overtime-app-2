@user = User.create(email: "test1@test.com", password: "badass", password_confirmation: "badass", first_name: "Jon", last_name: "Snow", type: "AdminUser")

puts '1 User created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"