class AddCourtToCases < ActiveRecord::Migration[6.0]
  def change
    add_column :cases, :court, :string
  end
end
