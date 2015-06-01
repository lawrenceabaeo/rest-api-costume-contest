class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.belongs_to :contest, index: true
      t.belongs_to :category_description, index: true

      t.timestamps
    end
  end
end
