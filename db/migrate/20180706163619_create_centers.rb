class CreateCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :centers do |t|
      t.string :name
      t.string :address
      t.string :state
      t.text :detail
      t.integer :capacity, default: 0
      t.integer :chairs, default: 0
      t.integer :projectors, default: 0
      t.string :image

      t.timestamps
    end
  end
end
