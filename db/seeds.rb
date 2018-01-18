@user = User.create(email: "test@test.com", password: "foobar", password_confirmation: "foobar", first_name: "Kamil", last_name: "Kula")

puts "1 user created"

AdminUser.create(email: "admin@test.com", password: "foobar", password_confirmation: "foobar", first_name: "Admin", last_name: "User")

puts "1 admin created"


100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 posts have been created"
