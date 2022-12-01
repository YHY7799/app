class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.string :appartment
      t.integer :flat
      t.string :name
      t.string :phone
      t.string :join
      t.string :duration

      t.timestamps
    end
  end
end
