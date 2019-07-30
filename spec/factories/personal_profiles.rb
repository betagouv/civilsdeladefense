# frozen_string_literal: true

FactoryBot.define do
  factory :personal_profile do
    gender 1
    nationality 'FR'
    has_residence_permit false
    is_currently_employed false
    availability_date_in_month 1
    study_level { StudyLevel.all.sample }
    study_type 'EPITA'
    specialization 'Sécurité Informatique'
    experience_level { ExperienceLevel.all.sample }
    has_corporate_experience false
  end
end