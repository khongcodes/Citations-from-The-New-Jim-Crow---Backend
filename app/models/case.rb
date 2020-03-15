class Case < ApplicationRecord
  has_many :case_studies
  has_many :studies, through: :case_studies
end
