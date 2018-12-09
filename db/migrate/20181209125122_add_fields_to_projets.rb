class AddFieldsToProjets < ActiveRecord::Migration[5.2]
  def change
    add_column :projets, :titleen, :string
    add_column :projets, :bodyen, :text
  end
end
