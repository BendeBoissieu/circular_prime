class AddResultsToCircularNb < ActiveRecord::Migration[5.2]
  def change
    add_column :circular_nbs, :results, :text, array: true, default: []
  end
end
