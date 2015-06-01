class CreateCategoryDescriptions < ActiveRecord::Migration
  def change
    create_table :category_descriptions do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
