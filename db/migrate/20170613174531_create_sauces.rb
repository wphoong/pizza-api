class CreateSauces < ActiveRecord::Migration[5.1]
  def change
    create_table :sauces do |t|
      t.string :kind
      t.timestamps
    end
  end
end
