class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :user
      t.text :text
      t.references :blogpost, foreign_key: true

      t.timestamps
    end
  end
end
