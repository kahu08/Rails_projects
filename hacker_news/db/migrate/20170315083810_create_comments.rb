class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.column :user, :string
      t.column :comment, :text
    end
  end
end
