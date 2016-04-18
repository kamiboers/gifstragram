class AddCategoryIdToGifs < ActiveRecord::Migration
  def change
          t.references :category, index: true, foreign_key: true
  end
end
