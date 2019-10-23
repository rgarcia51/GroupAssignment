class CreateDiseaseDates < ActiveRecord::Migration[6.0]
  def change
    create_table :disease_dates do |t|
      t.string :date
      t.references :animal, null: false, foreign_key: true
      t.references :disease, null: false, foreign_key: true

      t.timestamps
    end
  end
end
