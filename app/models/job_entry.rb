# == Schema Information
#
# Table name: job_entries
#
#  id               :bigint(8)        not null, primary key
#  title            :string           not null
#  url              :string           not null
#  company          :string
#  company_url      :string
#  location         :string
#  remote           :boolean          default(FALSE)
#  job_type         :integer
#  description      :text
#  experience_level :integer
#  tags             :text             default([]), is an Array
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class JobEntry < ApplicationRecord
end
