class AddAuthorToStudies < ActiveRecord::Migration[6.0]
  def change
    add_column :studies, :author, :string
  end
end
