class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      # t.boolean :host
      # t.boolean :guest

      t.timestamps null: false
    end
  end
end
