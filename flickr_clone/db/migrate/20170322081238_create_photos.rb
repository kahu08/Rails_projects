class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :photo
      t.integer :user_id
      t.integer :vote
      t.string :tag

      t.timestamps
    end
  end
end
