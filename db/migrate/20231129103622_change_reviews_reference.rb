class ChangeReviewsReference < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :restaurant, index: true
    remove_reference :reviews, :restaurant_id, index: true
  end
end
