class AddRoomToFixture < ActiveRecord::Migration[5.1]
  def change
    add_reference :fixtures, :room, foreign_key: true
  end
end
