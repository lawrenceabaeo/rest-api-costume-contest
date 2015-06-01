class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :person
      t.string :character
      t.integer :rank
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
