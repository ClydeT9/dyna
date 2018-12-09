class AddFieldsToHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :titleen, :string
    add_column :homes, :bodyen, :text
  end
end
