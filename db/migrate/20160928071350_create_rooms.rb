class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :title
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
