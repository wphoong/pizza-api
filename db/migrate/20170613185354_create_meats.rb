class CreateMeats < ActiveRecord::Migration[5.1]
  def change
    create_table :meats do |t|
      t.string :kind
      t.timestamps
    end
  end
end
