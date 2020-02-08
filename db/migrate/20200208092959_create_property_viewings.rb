class CreatePropertyViewings < ActiveRecord::Migration[5.2]
  def change
    create_table :property_viewings do |t|
      t.string :status
      t.array :time_slot
      t.timestamp :confirmed_time
      t.references :user, foreign_key: true
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
