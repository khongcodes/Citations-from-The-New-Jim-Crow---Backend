class CreateCaseStudies < ActiveRecord::Migration[6.0]
  def change
    create_table :case_studies do |t|
      t.integer :case_id
      t.integer :study_id
    end
  end
end
