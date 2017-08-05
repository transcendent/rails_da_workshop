class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :floor
      t.string :format

      t.timestamps
    end
  end
end
