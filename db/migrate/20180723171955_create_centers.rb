class CreateCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :centers do |t|
      t.string :name
      t.string :image
      t.string :address
      t.string :state
      t.integer :chairs, default: 0
      t.integer :projector, default: 0
      t.integer :capacity, default: 0
      t.string :detail

      t.timestamps
    end
  end
end
