class Job < ApplicationRecord
  monetize :salary_cents, allow_nil: true
  monetize :top_salary_cents, allow_nil: true
end
