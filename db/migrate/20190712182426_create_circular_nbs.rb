class CreateCircularNbs < ActiveRecord::Migration[5.2]
  def change
    create_table :circular_nbs do |t|
      t.integer :value

      t.timestamps
    end
  end
end
