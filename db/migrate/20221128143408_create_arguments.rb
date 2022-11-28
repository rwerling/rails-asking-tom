class CreateArguments < ActiveRecord::Migration[7.0]
  def change
    create_table :arguments do |t|
      t.string :argument_name
      t.references :option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
