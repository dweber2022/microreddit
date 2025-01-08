class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :post, null: false, index: true, foreign_key: true
      t.references :user, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
