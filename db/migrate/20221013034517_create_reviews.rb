class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :description
      t.belongs_to :review,null: false, foreign_key: true
      t.timestamps
    end
  end
end
