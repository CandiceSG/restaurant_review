class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :context
      t.integer :rating
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
