class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.string :title
      t.date :date
      t.string :link
      t.string :impact
      t.string :info
    end
  end
end
