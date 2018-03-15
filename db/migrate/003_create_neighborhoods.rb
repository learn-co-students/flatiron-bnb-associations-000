class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |n|
      n.integer :city_id
      n.string :name
    end
  end
end
