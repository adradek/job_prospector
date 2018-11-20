# == Schema Information
#
# Table name: jobs
#
#  id                   :bigint(8)        not null, primary key
#  title                :string           not null
#  url                  :string           not null
#  company              :string
#  company_url          :string
#  location             :string
#  remote               :boolean          default(FALSE)
#  job_type             :integer
#  description          :text
#  experience_level     :integer
#  tags                 :text             default([]), is an Array
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  salary_from_cents    :integer          default(0), not null
#  salary_from_currency :string           default("USD"), not null
#  salary_to_cents      :integer          default(0), not null
#  salary_to_currency   :string           default("USD"), not null
#

class Job < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true

  monetize :salary_from_cents
  monetize :salary_to_cents
end
