class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :link
      t.references :user, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end