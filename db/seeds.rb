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
  Post.create!(date: Date.today, rationale: "#{post} The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 posts have been created"

AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit_logs have been created"
