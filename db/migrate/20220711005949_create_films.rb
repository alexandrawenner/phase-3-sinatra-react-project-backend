class CreateFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :films do |t|
      t.string :title
      t.integer :year
      t.integer :runtime
      t.integer :rotten_tomatoes_score
      t.string :director
      t.string :starring
      t.string :synopsis
      t.string :critics_consensus
      t.string :image_url
    end
  end
end

#Ask if we need to add the foreign keys for user_id and film_id
