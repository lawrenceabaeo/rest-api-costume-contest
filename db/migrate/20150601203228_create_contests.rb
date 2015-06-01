class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :name
      t.string :description
      t.string :location
      t.datetime :contest_occurrence

      t.timestamps
    end
  end
end
