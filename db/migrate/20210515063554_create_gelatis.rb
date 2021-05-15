class CreateGelatis < ActiveRecord::Migration[6.1]
  def change
    create_table :gelatis do |t|
      t.string :nome
      t.string :ingredienti
      t.integer :calorie

      t.timestamps
    end
  end
end
