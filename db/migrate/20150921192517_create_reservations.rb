class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :checkin
      t.datetime :checkout
      t.belongs_to :listing
      t.references :guest, index: true

      t.timestamps null: false
    end
  end
end
