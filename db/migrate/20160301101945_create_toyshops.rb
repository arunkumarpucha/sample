class CreateToyshops < ActiveRecord::Migration
  def change
    create_table :toyshops do |t|
      t.string :name
      t.text :address
      t.string :owner

      t.timestamps null: false
    end
  end
end
