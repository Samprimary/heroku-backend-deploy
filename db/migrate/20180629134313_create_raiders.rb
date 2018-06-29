class CreateRaiders < ActiveRecord::Migration[5.1]
  def change
    create_table :raiders do |t|
      t.string :name
      t.integer :power

      t.timestamps
    end
  end
end
