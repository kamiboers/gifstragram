class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :search_terms
      t.string :url
      
      t.timestamps null: false
    end
  end
end
