# Overtime application

## Key requirements: company needs documentation that salaried employees did or did not get overtime each week

## Models:
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- x AuditLog

## Features:
- x Approval workflow
- x SMS Sending -> link to approval or overtime input
- x Administrate admin dashboard
- x Block non admin and guest users
- x Email summary to managers for approval
- x Needs to be documented if employee did not log overtime
- x Create audit log for each text message

## TODOS:
- x Need to update end_date when confirmed
- x Need to update audit log status when an overtime rejected
- x Update buttons on employee homepage so they show on mobile
- x Update buttons to include time span
- x Update buttons sort order on employee homepage
- x Remove unnecessary nav bar buttons for managers
- x Fix admin dashboard bug
- x Implement Rollbar error reporting
- x Implement rake task and heroku scheduler to keep site alive
