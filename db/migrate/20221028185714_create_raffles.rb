class CreateRaffles < ActiveRecord::Migration[6.1]
  def change
    create_table :raffles do |t|
      t.integer :number
      t.string :name
      t.integer :status

      t.timestamps
    end
  end
end
