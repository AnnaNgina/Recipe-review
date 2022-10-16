class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :description
      t.belongs_to :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
