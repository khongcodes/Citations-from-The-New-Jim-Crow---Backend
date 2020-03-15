class Study < ApplicationRecord
  has_many :case_studies
  has_many :cases, through: :studies
end
