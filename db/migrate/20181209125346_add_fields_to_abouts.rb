class AddFieldsToAbouts < ActiveRecord::Migration[5.2]
  def change
    add_column :abouts, :titleen, :string
    add_column :abouts, :bodyen, :text
  end
end
