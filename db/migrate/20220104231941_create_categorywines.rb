class CreateCategorywines < ActiveRecord::Migration[5.2]
  def change
    create_table :categorywines do |t|
      t.references :category, foreign_key: true
      t.references :wine, foreign_key: true

      t.timestamps
    end
  end
end
