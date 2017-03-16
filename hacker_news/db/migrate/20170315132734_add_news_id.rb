class AddNewsId < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :news_id, :integer
  end
end
