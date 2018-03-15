class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |c|
      c.string :name, null: false
    end
  end
end
