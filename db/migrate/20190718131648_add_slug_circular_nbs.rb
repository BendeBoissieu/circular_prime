class AddSlugCircularNbs < ActiveRecord::Migration[5.2]
  def change
    add_column :circular_nbs, :slug, :string, unique: true
  end
end
