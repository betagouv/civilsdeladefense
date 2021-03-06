# frozen_string_literal: true

FactoryBot.define do
  factory :cmg do
    email { "cmg@molo.org" }
    organization { Organization.first }
  end
end

# == Schema Information
#
# Table name: cmgs
#
#  id              :uuid             not null, primary key
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :uuid             not null
#
# Indexes
#
#  index_cmgs_on_organization_id  (organization_id)
#
# Foreign Keys
#
#  fk_rails_e2e1c3a54f  (organization_id => organizations.id)
#
