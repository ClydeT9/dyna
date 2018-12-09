class AddFieldsToSolutions < ActiveRecord::Migration[5.2]
  def change
    add_column :solutions, :titleen, :string
    add_column :solutions, :bodyen, :text
  end
end
