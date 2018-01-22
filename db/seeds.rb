@user = User.create(email: "test@test.com",
                    password: "foobar",
                    password_confirmation: "foobar",
                    first_name: "Norville",
                    last_name: "Rogers",
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

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit_logs have been created"
