class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
