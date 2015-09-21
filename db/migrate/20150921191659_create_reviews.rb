class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.references :guest, index: true
      t.belongs_to :reservation, index: true

      t.timestamps null: false
    end
  end
end
