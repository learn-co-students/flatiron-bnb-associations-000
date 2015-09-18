class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :checkin
      t.datetime :checkout
      t.references :guest
      t.references :listing

      t.timestamps null: false
    end
  end
end
