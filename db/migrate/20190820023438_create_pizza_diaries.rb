class CreatePizzaDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :pizza_diaries do |t|
      t.string :title
      t.string :toppings
      t.text :thoughts

      t.timestamps
    end
  end
end
