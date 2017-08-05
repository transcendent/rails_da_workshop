class CreateFixtures < ActiveRecord::Migration[5.1]
  def change
    create_table :fixtures do |t|
      t.string :asset
      t.string :type
      t.text :notes

      t.timestamps
    end
  end
end
