class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :review_body
      t.timestamps
      t.integer :film_id
      t.integer :user_id
    end
  end
end
