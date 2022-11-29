class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    add_column :arguments, :score, :integer
  end
end
