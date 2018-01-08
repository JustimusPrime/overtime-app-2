# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- Post -> date:date rationale:text
x User -> Devise
x AdminUser -> STI (single table inheritance)

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- Administrate admin dashboard
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- Bootstrap -> formatting
x update style for forms
- icons from font awesome

## Refactor TODOS:
- refactor user association integration test in post-spec
x add full name thing for users