class AddCategoryToProjet < ActiveRecord::Migration[5.2]
  def change
    add_reference :projets, :category, foreign_key: true
  end
end
