class CreateStudies < ActiveRecord::Migration[6.0]
  def change
    create_table :studies do |t|
      t.string :title
      t.date :date
      t.string :link
      t.string :info
    end
  end
end
