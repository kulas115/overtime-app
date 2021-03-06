@employee = Employee.create(email: "test@test.com",
                    password: "foobar",
                    password_confirmation: "foobar",
                    first_name: "Norville",
                    last_name: "Rogers",
                    phone: "48728493306",
                    ssn: 1234,
                    company: "ABC Company")

puts "1 employee created"

AdminUser.create(email: "admin@test.com",
                 password: "foobar",
                 password_confirmation: "foobar",
                 first_name: "Admin",
                 last_name: "employee",
                 phone: "48728493306",
                 ssn: 1234,
                 company: "ABC Company")

puts "1 admin user created"

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit_logs have been created"

100.times do |post|
  Post.create!(date: Date.today, work_performed: "#{post} The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.", user_id: @employee.id, daily_hours: 12.5)
end

puts "100 posts have been created"
