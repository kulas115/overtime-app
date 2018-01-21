@user = User.create(email: "test@test.com",
                    password: "foobar",
                    password_confirmation: "foobar",
                    first_name: "Kamil",
                    last_name: "Kula",
                    phone: "48728493306")

puts "1 user created"

AdminUser.create(email: "admin@test.com",
                 password: "foobar",
                 password_confirmation: "foobar",
                 first_name: "Admin",
                 last_name: "User",
                 phone: "48728493306")

puts "1 admin created"


100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 posts have been created"
