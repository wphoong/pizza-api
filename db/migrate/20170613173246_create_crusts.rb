class CreateCrusts < ActiveRecord::Migration[5.1]
  def change
    create_table :crusts do |t|
      t.string :type
      t.timestamps
    end
  end
end
