class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.column :information, :text
      t.column :upvote, :integer

      t.timestamps
    end
  end
end
