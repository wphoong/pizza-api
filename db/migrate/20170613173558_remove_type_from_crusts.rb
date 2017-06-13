class RemoveTypeFromCrusts < ActiveRecord::Migration[5.1]
  def change
    remove_column :crusts, :type, :string
    add_column :crusts, :kind, :string
  end
end
