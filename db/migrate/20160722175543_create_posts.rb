class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :journal_id
      t.string :info

      t.timestamps null: false
    end
  end
end
